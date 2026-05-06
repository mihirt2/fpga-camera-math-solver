from __future__ import annotations

from pathlib import Path

from PIL import Image


IMG_W = 16
IMG_H = 32
MAX_SAMPLES = 10
PREFER_NEWEST_LABELS = {"5"}

ROOT = Path("ocr_training/data/normalized_chars/labeled")
OUT_SV = Path("final_project.srcs/sources_1/new/font_rom_16x32.sv")

CLASSES = [
    ("0", 0),
    ("1", 1),
    ("2", 2),
    ("3", 3),
    ("4", 4),
    ("5", 5),
    ("6", 6),
    ("7", 7),
    ("8", 8),
    ("9", 9),
    ("plus", 10),
    ("x", 11),
    ("times", 12),
    ("equals", 13),
    ("open_paren", 14),
    ("close_paren", 15),
    ("caret", 16),
]

START = "// BEGIN GENERATED COLLECTED NORMALIZED TEMPLATE ROM"
END = "// END GENERATED COLLECTED NORMALIZED TEMPLATE ROM"


def image_rows(path: Path) -> list[int]:
    img = Image.open(path).convert("L")
    if img.size != (IMG_W, IMG_H):
        img = img.resize((IMG_W, IMG_H), Image.Resampling.NEAREST)

    arr = img.point(lambda px: 0 if px < 128 else 255)
    ink_count = sum(1 for px in arr.getdata() if px == 0)
    if ink_count < 8:
        raise ValueError("blank/empty crop")
    if ink_count > 430:
        raise ValueError("almost all-black crop")

    rows: list[int] = []
    pixels = arr.load()
    for y in range(IMG_H):
        word = 0
        for x in range(IMG_W):
            if pixels[x, y] < 128:
                word |= 1 << (IMG_W - 1 - x)
        rows.append(word)
    return rows


def class_files(label: str) -> list[Path]:
    files: list[Path] = []
    labels = [label]
    if label == "equals":
        labels.append("minus")

    for source_label in labels:
        class_dir = ROOT / source_label
        for suffix in ("*.png", "*.pbm", "*.jpg", "*.jpeg"):
            files.extend(class_dir.glob(suffix))

    if label in PREFER_NEWEST_LABELS:
        candidates = sorted(files, key=lambda p: (p.stat().st_mtime, p.name), reverse=True)
    else:
        candidates = sorted(files)

    usable: list[Path] = []
    for path in candidates:
        try:
            image_rows(path)
        except ValueError as exc:
            print(f"skip template {path}: {exc}")
            continue
        usable.append(path)
        if len(usable) == MAX_SAMPLES:
            break

    return usable


def build_module() -> tuple[str, list[tuple[str, int, int]]]:
    depth = len(CLASSES) * MAX_SAMPLES * IMG_H
    lines: list[str] = [
        START,
        "",
        "module collected_norm_template_rom (",
        "    input  logic        clk,",
        "    input  logic [4:0]  class_idx,",
        "    input  logic [3:0]  sample_idx,",
        "    input  logic [4:0]  row,",
        "    output logic [15:0] bits",
        ");",
        "",
        f"    localparam int ROM_DEPTH = {depth};",
        "    logic [12:0] rom_addr;",
        "    (* rom_style = \"block\" *) logic [15:0] rom [0:ROM_DEPTH-1];",
        "",
        "    assign rom_addr = ({8'b0, class_idx} << 8)",
        "                    + ({8'b0, class_idx} << 6)",
        "                    + ({9'b0, sample_idx} << 5)",
        "                    + {8'b0, row};",
        "",
        "    initial begin : init_collected_norm_template_rom",
        "        integer addr;",
        "        for (addr = 0; addr < ROM_DEPTH; addr = addr + 1)",
        "            rom[addr] = 16'h0000;",
        "",
    ]

    summary: list[tuple[str, int, int]] = []
    for label, code in CLASSES:
        files = class_files(label)
        if not files:
            raise SystemExit(f"No images found for label {label!r} in {ROOT / label}")
        summary.append((label, code, len(files)))
        lines.append(f"        // class {code}: {label}, {len(files)} sample(s)")
        for sample_idx, path in enumerate(files):
            rows = image_rows(path)
            lines.append(f"        // sample {sample_idx}: {path.as_posix()}")
            for row_idx, word in enumerate(rows):
                flat_addr = code * MAX_SAMPLES * IMG_H + sample_idx * IMG_H + row_idx
                lines.append(
                    f"        rom[13'd{flat_addr}] = 16'h{word:04X};"
                )
            lines.append("")

    lines.extend(
        [
            "    end",
            "",
            "    always_ff @(posedge clk) begin",
            "        bits <= rom[rom_addr];",
            "    end",
            "",
            "endmodule",
            "",
            END,
            "",
        ]
    )
    return "\n".join(lines), summary


def main() -> None:
    module_text, summary = build_module()
    original = OUT_SV.read_text(encoding="utf-8")

    if START in original and END in original:
        before = original.split(START, 1)[0]
        after = original.split(END, 1)[1]
        updated = before.rstrip() + "\n\n" + module_text.rstrip() + "\n" + after.lstrip("\n")
    else:
        updated = original.rstrip() + "\n\n" + module_text

    OUT_SV.write_text(updated, encoding="utf-8", newline="\n")
    for label, code, count in summary:
        print(f"class {code:2d} {label:11s}: {count} sample(s)")


if __name__ == "__main__":
    main()
