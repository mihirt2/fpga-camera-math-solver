from __future__ import annotations

import argparse
import csv
import hashlib
import random
import re
from pathlib import Path

import numpy as np
from PIL import Image, ImageChops, ImageFilter, ImageOps


IMG_W = 16
IMG_H = 32

DEFAULT_DATA_ROOT = Path("ocr_training/data/normalized_chars")
DEFAULT_FONT_ROM = Path("final_project.srcs/sources_1/new/font_rom_16x32.sv")

CLASS_NAMES = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "plus",
    "x",
    "times",
    "equals",
    "caret",
    "open_paren",
    "close_paren",
]

LABEL_ALIASES = {
    "+": "plus",
    "add": "plus",
    "plus": "plus",
    "-": "minus",
    "sub": "minus",
    "subtract": "minus",
    "minus": "minus",
    "*": "times",
    "x": "x",
    "var": "x",
    "variable": "x",
    "mul": "times",
    "multiply": "times",
    "times": "times",
    "=": "equals",
    "eq": "equals",
    "equal": "equals",
    "equals": "equals",
    "^": "caret",
    "caret": "caret",
    "power": "caret",
    "pow": "caret",
    "exponent": "caret",
    "exponentiation": "caret",
    "(": "open_paren",
    "lparen": "open_paren",
    "left_paren": "open_paren",
    "left_parenthesis": "open_paren",
    "open_paren": "open_paren",
    "open_parenthesis": "open_paren",
    "open_bracket": "open_paren",
    ")": "close_paren",
    "rparen": "close_paren",
    "right_paren": "close_paren",
    "right_parenthesis": "close_paren",
    "close_paren": "close_paren",
    "close_parenthesis": "close_paren",
    "close_bracket": "close_paren",
}

for digit in range(10):
    LABEL_ALIASES[str(digit)] = str(digit)

CHAR_CODE_TO_LABEL = {
    0x28: "open_paren",
    0x29: "close_paren",
    0x2A: "times",
    0x2B: "plus",
    0x78: "x",
    0x30: "0",
    0x31: "1",
    0x32: "2",
    0x33: "3",
    0x34: "4",
    0x35: "5",
    0x36: "6",
    0x37: "7",
    0x38: "8",
    0x39: "9",
    0x3D: "equals",
}


def normalize_label(label: str) -> str:
    key = label.strip().lower()
    key = key.replace(" ", "_").replace("-", "_")
    if key in LABEL_ALIASES:
        return LABEL_ALIASES[key]
    raise ValueError(f"Unknown label '{label}'. Use one of: {', '.join(CLASS_NAMES)}")


def infer_label(path: Path) -> str:
    parent = path.parent.name.lower()
    try:
        return normalize_label(parent)
    except ValueError:
        pass

    stem = path.stem.lower()
    stem = stem.replace(" ", "_").replace("-", "_")
    aliases = sorted(LABEL_ALIASES, key=len, reverse=True)
    for alias in aliases:
        safe_alias = alias.replace(" ", "_").replace("-", "_")
        if stem == safe_alias or stem.endswith("_" + safe_alias):
            return LABEL_ALIASES[alias]

    raise ValueError(f"Could not infer label for {path}. Pass --label explicitly.")


def read_ascii_pbm(path: Path) -> Image.Image:
    tokens: list[str] = []
    for line in path.read_text(encoding="ascii").splitlines():
        line = line.split("#", 1)[0]
        tokens.extend(line.split())

    if len(tokens) < 4 or tokens[0] != "P1":
        raise ValueError(f"{path} is not an ASCII P1 PBM file")

    width = int(tokens[1])
    height = int(tokens[2])
    values = [int(v) for v in tokens[3:]]
    if width != IMG_W or height != IMG_H:
        raise ValueError(f"{path} is {width}x{height}; expected {IMG_W}x{IMG_H}")
    if len(values) != width * height:
        raise ValueError(f"{path} has {len(values)} pixels; expected {width * height}")

    arr = np.array(values, dtype=np.uint8).reshape(height, width)
    arr = np.where(arr == 1, 0, 255).astype(np.uint8)
    return Image.fromarray(arr)


def normalize_image(path: Path, label: str | None = None) -> Image.Image:
    if path.suffix.lower() == ".pbm":
        bw = np.array(read_ascii_pbm(path))
    else:
        img = Image.open(path).convert("L")
        arr = np.array(img)
        if arr.mean() < 127:
            img = ImageOps.invert(img)
        img = ImageOps.autocontrast(img)
        arr = np.array(img)
        bw = np.where(arr < 192, 0, 255).astype(np.uint8)

    ink = bw == 0
    ink_fraction = float(ink.mean())
    if ink_fraction < 0.01:
        raise ValueError("crop is blank/empty; do not train it as a character")
    if ink_fraction > 0.85:
        raise ValueError("crop is almost all black; do not train it as a character")

    ys, xs = np.where(ink)
    x_min = int(xs.min())
    x_max = int(xs.max())
    y_min = int(ys.min())
    y_max = int(ys.max())
    ink_w = x_max - x_min + 1
    ink_h = y_max - y_min + 1
    resample = getattr(Image.Resampling, "NEAREST", Image.NEAREST)

    if ink_h <= 4 and ink_w >= ink_h * 3:
        min_h = max(8, ink_h)
        pad = max(0, min_h - ink_h)
        y_min = max(0, y_min - pad // 2)
        y_max = min(bw.shape[0] - 1, y_max + pad - (pad // 2))
        if y_max - y_min + 1 < min_h:
            y_min = max(0, y_max - min_h + 1)

        crop = Image.fromarray(bw[y_min : y_max + 1, x_min : x_max + 1])
        img = crop.resize((IMG_W, IMG_H), resample)
        img = img.filter(ImageFilter.MinFilter(3))
        arr = np.array(img)
        bw = np.where(arr < 128, 0, 255).astype(np.uint8)
        return Image.fromarray(bw)

    img = Image.fromarray(bw).resize((IMG_W, IMG_H), resample)
    arr = np.array(img)
    bw = np.where(arr < 128, 0, 255).astype(np.uint8)
    return Image.fromarray(bw)


def iter_input_images(root: Path) -> list[Path]:
    exts = {".pbm", ".png", ".jpg", ".jpeg", ".bmp"}
    if root.is_file():
        return [root] if root.suffix.lower() in exts else []
    return sorted(p for p in root.rglob("*") if p.is_file() and p.suffix.lower() in exts)


def safe_stem(text: str) -> str:
    text = re.sub(r"[^A-Za-z0-9_.-]+", "_", text)
    return text.strip("_.-") or "sample"


def write_manifest_row(manifest_path: Path, row: dict[str, str]) -> None:
    manifest_path.parent.mkdir(parents=True, exist_ok=True)
    exists = manifest_path.exists()
    with manifest_path.open("a", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=["saved_path", "label", "source", "source_path"],
        )
        if not exists:
            writer.writeheader()
        writer.writerow(row)


def save_labeled_image(img: Image.Image, source_path: Path, label: str, data_root: Path, source: str) -> Path:
    label_dir = data_root / "labeled" / label
    label_dir.mkdir(parents=True, exist_ok=True)
    digest = hashlib.sha1(source_path.resolve().as_posix().encode("utf-8")).hexdigest()[:10]
    out_name = f"{safe_stem(source_path.stem)}_{digest}.png"
    out_path = label_dir / out_name
    img.save(out_path)
    write_manifest_row(
        data_root / "manifest.csv",
        {
            "saved_path": out_path.as_posix(),
            "label": label,
            "source": source,
            "source_path": source_path.as_posix(),
        },
    )
    return out_path


def cmd_ingest(args: argparse.Namespace) -> None:
    input_path = Path(args.input)
    data_root = Path(args.output)
    files = iter_input_images(input_path)
    if not files:
        raise SystemExit(f"No image files found under {input_path}")

    saved = 0
    skipped = 0
    for path in files:
        try:
            label = normalize_label(args.label) if args.label != "auto" else infer_label(path)
            img = normalize_image(path, label)
            save_labeled_image(img, path, label, data_root, args.source)
            saved += 1
        except Exception as exc:
            skipped += 1
            print(f"skip: {path}: {exc}")

    print(f"saved {saved} images into {data_root / 'labeled'}")
    if skipped:
        print(f"skipped {skipped} files")


def parse_font_rom(path: Path) -> dict[str, Image.Image]:
    rows: dict[int, list[int]] = {code: [0] * IMG_H for code in CHAR_CODE_TO_LABEL}
    pattern = re.compile(
        r"font_rom\[8'h([0-9a-fA-F]+)\]\[5'd(\d+)\]\s*=\s*16'h([0-9a-fA-F]+);"
    )
    for line in path.read_text(encoding="utf-8").splitlines():
        match = pattern.search(line)
        if not match:
            continue
        code = int(match.group(1), 16)
        row = int(match.group(2))
        bits = int(match.group(3), 16)
        if code in rows and 0 <= row < IMG_H:
            rows[code][row] = bits

    images: dict[str, Image.Image] = {}
    for code, label in CHAR_CODE_TO_LABEL.items():
        arr = np.full((IMG_H, IMG_W), 255, dtype=np.uint8)
        for y, bits in enumerate(rows[code]):
            for x in range(IMG_W):
                if bits & (1 << (IMG_W - 1 - x)):
                    arr[y, x] = 0
        images[label] = Image.fromarray(arr)
    return images


def shift_image(img: Image.Image, dx: int, dy: int) -> Image.Image:
    shifted = ImageChops.offset(img, dx, dy)
    arr = np.array(shifted)
    if dx > 0:
        arr[:, :dx] = 255
    elif dx < 0:
        arr[:, dx:] = 255
    if dy > 0:
        arr[:dy, :] = 255
    elif dy < 0:
        arr[dy:, :] = 255
    return Image.fromarray(arr.astype(np.uint8))


def add_speckle(img: Image.Image, rng: random.Random, prob: float) -> Image.Image:
    arr = np.array(img).copy()
    for y in range(IMG_H):
        for x in range(IMG_W):
            if rng.random() < prob:
                arr[y, x] = 0 if rng.random() < 0.5 else 255
    return Image.fromarray(arr.astype(np.uint8))


def font_variant(img: Image.Image, rng: random.Random) -> Image.Image:
    out = shift_image(img, rng.randint(-2, 2), rng.randint(-2, 2))
    roll = rng.random()
    if roll < 0.20:
        out = out.filter(ImageFilter.MinFilter(3))
    elif roll < 0.35:
        out = out.filter(ImageFilter.MaxFilter(3))
    out = add_speckle(out, rng, prob=rng.uniform(0.0, 0.006))
    return out


def cmd_font_rom(args: argparse.Namespace) -> None:
    rng = random.Random(args.seed)
    data_root = Path(args.output)
    font_images = parse_font_rom(Path(args.font_rom))

    saved = 0
    for label, base_img in font_images.items():
        for index in range(args.count):
            img = font_variant(base_img, rng)
            source_name = Path(f"fontrom_{label}_{index:04d}.png")
            save_labeled_image(img, source_name, label, data_root, "font_rom")
            saved += 1
    print(f"saved {saved} font-rom synthetic images into {data_root / 'labeled'}")


def cmd_summary(args: argparse.Namespace) -> None:
    labeled_root = Path(args.output) / "labeled"
    if not labeled_root.exists():
        print(f"No labeled data found at {labeled_root}")
        return
    total = 0
    for label_dir in sorted(p for p in labeled_root.iterdir() if p.is_dir()):
        count = len(iter_input_images(label_dir))
        total += count
        print(f"{label_dir.name:12s} {count:6d}")
    print(f"{'total':12s} {total:6d}")


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Prepare local FPGA-normalized OCR crops.")
    sub = parser.add_subparsers(dest="cmd", required=True)

    ingest = sub.add_parser("ingest", help="Import PBM/PNG/JPG crops into class folders.")
    ingest.add_argument("--input", required=True, help="Input file or directory.")
    ingest.add_argument("--output", default=DEFAULT_DATA_ROOT, help="Dataset root.")
    ingest.add_argument("--label", default="auto", help="Class label, or 'auto' to infer.")
    ingest.add_argument("--source", default="manual", help="Source tag for manifest.csv.")
    ingest.set_defaults(func=cmd_ingest)

    font_rom = sub.add_parser("font-rom", help="Generate synthetic crops from font_rom_16x32.sv.")
    font_rom.add_argument("--font-rom", default=DEFAULT_FONT_ROM, help="Path to font_rom_16x32.sv.")
    font_rom.add_argument("--output", default=DEFAULT_DATA_ROOT, help="Dataset root.")
    font_rom.add_argument("--count", type=int, default=200, help="Samples per class.")
    font_rom.add_argument("--seed", type=int, default=42)
    font_rom.set_defaults(func=cmd_font_rom)

    summary = sub.add_parser("summary", help="Print per-class image counts.")
    summary.add_argument("--output", default=DEFAULT_DATA_ROOT, help="Dataset root.")
    summary.set_defaults(func=cmd_summary)

    return parser


def main() -> None:
    parser = build_parser()
    args = parser.parse_args()
    args.func(args)


if __name__ == "__main__":
    main()
