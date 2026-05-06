#!/usr/bin/env python3
"""Export normalized OCR PNGs to vectors for tb_tiny_math_cnn_match_dataset.sv.

Each output line is:
    <expected_code_hex> <512_bit_template_hex> <label>

The bit order matches normalize.sv/template_match input_char:
bit TEMPLATE_BITS-1 is row 0, col 0; bit 0 is row 31, col 15.
Black/ink pixels are encoded as 1, background as 0.
"""

from __future__ import annotations

import argparse
from pathlib import Path

from PIL import Image


CHAR_W = 16
CHAR_H = 32

LABEL_TO_CODE = {
    "0": 0,
    "1": 1,
    "2": 2,
    "3": 3,
    "4": 4,
    "5": 5,
    "6": 6,
    "7": 7,
    "8": 8,
    "9": 9,
    "plus": 10,
    "x": 11,
    "times": 12,
    "open_paren": 14,
    "close_paren": 15,
    "caret": 16,
}


def label_code(label: str) -> int | None:
    if label in LABEL_TO_CODE:
        return LABEL_TO_CODE[label]
    return None


def image_to_template_hex(path: Path, threshold: int) -> str:
    img = Image.open(path).convert("L").resize((CHAR_W, CHAR_H), Image.Resampling.NEAREST)
    value = 0
    for y in range(CHAR_H):
        for x in range(CHAR_W):
            ink = 1 if img.getpixel((x, y)) < threshold else 0
            value = (value << 1) | ink
    return f"{value:0128x}"


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--dataset",
        type=Path,
        default=Path("ocr_training/runs/cnn_active_dataset"),
        help="Folder with one subdirectory per class label.",
    )
    parser.add_argument(
        "--out",
        type=Path,
        default=Path("ocr_training/runs/cnn_hw_tb_vectors.mem"),
    )
    parser.add_argument("--threshold", type=int, default=128)
    parser.add_argument("--limit-per-class", type=int, default=0)
    args = parser.parse_args()

    lines: list[str] = []
    for class_dir in sorted(p for p in args.dataset.iterdir() if p.is_dir()):
        code = label_code(class_dir.name)
        if code is None:
            continue

        count = 0
        for image_path in sorted(class_dir.glob("*.png")):
            template_hex = image_to_template_hex(image_path, args.threshold)
            lines.append(f"{code:x} {template_hex} {class_dir.name}")
            count += 1
            if args.limit_per_class and count >= args.limit_per_class:
                break

    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text("\n".join(lines) + ("\n" if lines else ""), encoding="ascii")
    print(f"wrote {len(lines)} vectors to {args.out}")


if __name__ == "__main__":
    main()
