from __future__ import annotations

import argparse
import csv
import hashlib
import re
import time
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


def parse_labels(text: str | None) -> list[str]:
    if not text:
        return []
    if "," in text:
        return [normalize_label(part) for part in text.split(",") if part.strip()]
    labels: list[str] = []
    for ch in text:
        if not ch.isspace():
            labels.append(normalize_label(ch))
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


def save_crop(rows: list[str], label: str | None, data_root: Path, capture_id: str, index: int) -> Path:
    arr = np.full((IMG_H, IMG_W), 255, dtype=np.uint8)
    for y, row in enumerate(rows):
        for x, ch in enumerate(row):
            arr[y, x] = 0 if ch == "1" else 255
    img = Image.fromarray(arr)

    if label:
        out_dir = data_root / "labeled" / label
    else:
        out_dir = data_root / "inbox"
    out_dir.mkdir(parents=True, exist_ok=True)

    digest = hashlib.sha1(f"{capture_id}:{index}:{''.join(rows)}".encode("utf-8")).hexdigest()[:10]
    out_path = out_dir / f"uart_{safe_stem(capture_id)}_{index:02d}_{digest}.png"
    img.save(out_path)

    write_manifest_row(
        data_root / "manifest.csv",
        {
            "saved_path": out_path.as_posix(),
            "label": label or "",
            "source": "uart",
            "source_path": f"uart:{capture_id}:{index}",
        },
    )
    return out_path


def read_frame(ser, timeout_s: float) -> list[list[str]]:
    deadline = time.monotonic() + timeout_s

    while time.monotonic() < deadline:
        line = ser.readline().decode("ascii", errors="ignore").strip()
        if line.startswith("BEGIN"):
            break
    else:
        raise TimeoutError("Timed out waiting for BEGIN")

    chars: list[list[str]] = []
    current_rows: list[str] | None = None

    while time.monotonic() < deadline:
        line = ser.readline().decode("ascii", errors="ignore").strip()
        if not line:
            continue
        if line.startswith("END"):
            if current_rows is not None:
                raise ValueError("END arrived before current char had 32 rows")
            return chars
        if line.startswith("C "):
            if current_rows is not None:
                raise ValueError("New char arrived before current char had 32 rows")
            current_rows = []
            continue
        if current_rows is None:
            continue
        if len(line) != IMG_W or any(ch not in "01" for ch in line):
            raise ValueError(f"Bad bitmap row: {line!r}")
        current_rows.append(line)
        if len(current_rows) == IMG_H:
            chars.append(current_rows)
            current_rows = None

    raise TimeoutError("Timed out before END")


def labels_for_frame(fixed_labels: list[str], prompt_labels: bool, char_label: bool) -> list[str]:
    if prompt_labels:
        if char_label:
            text = input("label for all chars in next capture, blank for inbox, Ctrl+C to stop: ").strip()
            labels = parse_labels(text)
            if len(labels) > 1:
                raise ValueError("--char-label prompt expects one label")
            return labels
        text = input("labels for next capture, blank for inbox, Ctrl+C to stop: ").strip()
        return parse_labels(text)
    return fixed_labels


def capture_one_frame(ser, args: argparse.Namespace, fixed_labels: list[str], frame_index: int) -> int:
    labels = labels_for_frame(fixed_labels, args.prompt_labels, args.char_label)
    chars = read_frame(ser, args.timeout)

    capture_id = f"{time.strftime('%Y%m%d_%H%M%S')}_{frame_index:04d}"
    saved: list[Path] = []
    for index, rows in enumerate(chars):
        if args.char_label and labels:
            label = labels[0]
        else:
            label = labels[index] if index < len(labels) else None
        saved.append(save_crop(rows, label, Path(args.output), capture_id, index))

    for path in saved:
        print(path)
    print(f"saved {len(saved)} UART crops")
    return len(saved)


def choose_serial_port(serial_module, requested_port: str | None, list_ports: bool) -> str:
    ports = list(serial_module.tools.list_ports.comports())

    if list_ports:
        if not ports:
            print("No serial ports found.")
        for port in ports:
            print(f"{port.device}: {port.description} {port.hwid}")

    if requested_port:
        return requested_port

    if not ports:
        raise SystemExit("No serial ports found. Check USB cable, board power, and Vivado programming status.")

    preferred_terms = ("digilent", "xilinx", "usb serial", "usb-uart", "uart", "ftdi", "silicon labs")
    for port in ports:
        haystack = f"{port.description} {port.manufacturer or ''} {port.hwid}".lower()
        if any(term in haystack for term in preferred_terms):
            print(f"auto-selected {port.device}: {port.description}")
            return port.device

    if len(ports) == 1:
        print(f"auto-selected {ports[0].device}: {ports[0].description}")
        return ports[0].device

    raise SystemExit("Multiple serial ports found. Re-run with --list-ports, then pass --port COMx.")


def main() -> None:
    parser = argparse.ArgumentParser(description="Capture normalized OCR crops streamed over FPGA UART.")
    parser.add_argument("--port", default=None, help="Serial port, for example COM5. If omitted, try to auto-detect.")
    parser.add_argument("--baud", type=int, default=115200)
    parser.add_argument("--labels", default=None, help='Optional labels, e.g. "15+67" or "1,5,plus,6,7".')
    parser.add_argument("--output", default=DEFAULT_DATA_ROOT, help="Dataset root.")
    parser.add_argument("--timeout", type=float, default=30.0)
    parser.add_argument("--list-ports", action="store_true", help="Print detected serial ports before connecting.")
    parser.add_argument("--continuous", action="store_true", help="Keep listening and save every UART frame.")
    parser.add_argument(
        "--prompt-labels",
        action="store_true",
        help="Prompt for labels before each capture. Useful with --continuous.",
    )
    parser.add_argument(
        "--char-label",
        action="store_true",
        help="Treat --labels as one class label and apply it to every character in each received frame.",
    )
    args = parser.parse_args()

    try:
        import serial
        import serial.tools.list_ports
    except ImportError as exc:
        raise SystemExit("Install pyserial first: pip install pyserial") from exc

    port = choose_serial_port(serial, args.port, args.list_ports)
    fixed_labels = parse_labels(args.labels)
    if args.char_label and len(fixed_labels) > 1:
        raise SystemExit("--char-label expects exactly one label in --labels, for example --labels 1 or --labels plus")

    with serial.Serial(port, args.baud, timeout=0.5) as ser:
        frame_index = 0
        while True:
            try:
                capture_one_frame(ser, args, fixed_labels, frame_index)
                frame_index += 1
                if not args.continuous:
                    break
            except KeyboardInterrupt:
                print("\nstopped")
                break
            except TimeoutError as exc:
                if args.continuous:
                    print(f"waiting: {exc}")
                    continue
                raise


if __name__ == "__main__":
    main()
