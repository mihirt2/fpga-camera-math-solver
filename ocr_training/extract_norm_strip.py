from __future__ import annotations

import argparse
import csv
import hashlib
import re
from pathlib import Path

import numpy as np
from PIL import Image


IMG_W = 16
IMG_H = 32
DEFAULT_DATA_ROOT = Path("ocr_training/data/normalized_chars")

LABEL_ALIASES = {
    "+": "plus",
    "plus": "plus",
    "-": "minus",
    "minus": "minus",
    "*": "times",
    "x": "x",
    "var": "x",
    "variable": "x",
    "times": "times",
    "=": "equals",
    "equals": "equals",
    "(": "open_paren",
    "open_paren": "open_paren",
    ")": "close_paren",
    "close_paren": "close_paren",
}
for digit in range(10):
    LABEL_ALIASES[str(digit)] = str(digit)


def normalize_label(label: str) -> str:
    key = label.strip().lower().replace(" ", "_").replace("-", "_")
    if key in LABEL_ALIASES:
        return LABEL_ALIASES[key]
    raise ValueError(f"Unknown label '{label}'")


def parse_labels(text: str) -> list[str]:
    if "," in text:
        return [normalize_label(part) for part in text.split(",") if part.strip()]

    labels: list[str] = []
    index = 0
    while index < len(text):
        ch = text[index]
        if ch.isspace():
            index += 1
            continue
        labels.append(normalize_label(ch))
        index += 1
    return labels


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


def is_red(pixel: np.ndarray) -> bool:
    r, g, b = [int(v) for v in pixel[:3]]
    return r > 170 and g < 90 and b < 90


def sample_norm_cell(rgb: np.ndarray, x0: int, y0: int, cell_w: int, cell_h: int) -> Image.Image:
    out = np.full((IMG_H, IMG_W), 255, dtype=np.uint8)
    step_x = cell_w / IMG_W
    step_y = cell_h / IMG_H

    for py in range(IMG_H):
        for px in range(IMG_W):
            sx0 = int(round(x0 + px * step_x))
            sx1 = int(round(x0 + (px + 1) * step_x))
            sy0 = int(round(y0 + py * step_y))
            sy1 = int(round(y0 + (py + 1) * step_y))

            sx0 = max(0, min(rgb.shape[1] - 1, sx0))
            sx1 = max(sx0 + 1, min(rgb.shape[1], sx1))
            sy0 = max(0, min(rgb.shape[0] - 1, sy0))
            sy1 = max(sy0 + 1, min(rgb.shape[0], sy1))

            block = rgb[sy0:sy1, sx0:sx1, :]
            non_red = np.array([p for row in block for p in row if not is_red(p)])
            if non_red.size == 0:
                # Border-only block. Sample one pixel inward from the red border.
                fallback_x = max(x0 + 1, min(x0 + cell_w - 2, (sx0 + sx1) // 2))
                fallback_y = max(y0 + 1, min(y0 + cell_h - 2, (sy0 + sy1) // 2))
                non_red = rgb[fallback_y : fallback_y + 1, fallback_x : fallback_x + 1, :]

            gray = float(non_red[:, :3].mean(axis=1).mean())
            out[py, px] = 0 if gray < 128 else 255

    return Image.fromarray(out)


def save_labeled(img: Image.Image, source_image: Path, label: str, data_root: Path, index: int, source: str) -> Path:
    label_dir = data_root / "labeled" / label
    label_dir.mkdir(parents=True, exist_ok=True)
    digest = hashlib.sha1(f"{source_image.resolve().as_posix()}:{index}".encode("utf-8")).hexdigest()[:10]
    out_path = label_dir / f"{safe_stem(source_image.stem)}_{index:02d}_{digest}.png"
    img.save(out_path)
    write_manifest_row(
        data_root / "manifest.csv",
        {
            "saved_path": out_path.as_posix(),
            "label": label,
            "source": source,
            "source_path": source_image.as_posix(),
        },
    )
    return out_path


def main() -> None:
    parser = argparse.ArgumentParser(description="Extract FPGA normalized-strip chars from an HDMI screenshot.")
    parser.add_argument("--image", required=True, help="Screenshot or cropped photo of the FPGA video frame.")
    parser.add_argument("--labels", required=True, help='Expression labels, e.g. "15+67" or "1,5,plus,6,7".')
    parser.add_argument("--output", default=DEFAULT_DATA_ROOT, help="Dataset root.")
    parser.add_argument("--source", default="hw_screenshot", help="Source tag for manifest.csv.")
    parser.add_argument("--frame-width", type=int, default=640, help="FPGA frame width represented by the image.")
    parser.add_argument("--frame-height", type=int, default=480, help="FPGA frame height represented by the image.")
    parser.add_argument("--x", type=int, default=336, help="Native strip X coordinate.")
    parser.add_argument("--y", type=int, default=48, help="Native strip Y coordinate.")
    parser.add_argument("--scale", type=int, default=2, help="Native strip pixel scale.")
    parser.add_argument("--pitch", type=int, default=40, help="Native pitch between character cells.")
    args = parser.parse_args()

    labels = parse_labels(args.labels)
    if len(labels) > 8:
        raise SystemExit("The HDMI strip shows at most 8 normalized characters")

    image_path = Path(args.image)
    img = Image.open(image_path).convert("RGB")
    rgb = np.array(img)

    sx = img.width / args.frame_width
    sy = img.height / args.frame_height
    cell_w = int(round(IMG_W * args.scale * sx))
    cell_h = int(round(IMG_H * args.scale * sy))
    pitch = int(round(args.pitch * sx))
    strip_x = int(round(args.x * sx))
    strip_y = int(round(args.y * sy))

    saved: list[Path] = []
    for index, label in enumerate(labels):
        x0 = strip_x + index * pitch
        y0 = strip_y
        crop = sample_norm_cell(rgb, x0, y0, cell_w, cell_h)
        saved.append(save_labeled(crop, image_path, label, Path(args.output), index, args.source))

    for path in saved:
        print(path)
    print(f"saved {len(saved)} crops")


if __name__ == "__main__":
    main()
