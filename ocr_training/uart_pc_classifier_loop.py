import argparse
from pathlib import Path

import numpy as np
import torch
from PIL import Image

from capture_uart_norm import IMG_H, IMG_W, choose_serial_port, read_frame
from new_train_cnn import BetterMathCNN, build_transform, hw_char_code


DEFAULT_MODEL = Path("ocr_training/models/new_model.pt")


def rows_to_image(rows: list[str]) -> Image.Image:
    arr = np.full((IMG_H, IMG_W), 255, dtype=np.uint8)
    for y, row in enumerate(rows):
        for x, ch in enumerate(row):
            arr[y, x] = 0 if ch == "1" else 255
    return Image.fromarray(arr, mode="L")

def minus_heuristic(rows: list[str]) -> bool:
    xs: list[int] = []
    ys: list[int] = []
    for y, row in enumerate(rows):
        for x, ch in enumerate(row):
            if ch == "1":
                xs.append(x)
                ys.append(y)
    if len(xs) < 3:
        return False
    width = max(xs) - min(xs) + 1
    height = max(ys) - min(ys) + 1
    if height == 0 or width < 3:
        return False
    aspect = width / height
    density = len(xs) / (width * height)
    return (
        aspect >= 2.0
        and height <= 6
        and density >= 0.6
    )

def load_model(path: Path, device: torch.device):
    checkpoint = torch.load(path, map_location=device)
    class_names = checkpoint["class_names"]
    model = BetterMathCNN(num_classes=len(class_names)).to(device)
    model.load_state_dict(checkpoint["model_state_dict"])
    model.eval()
    return model, class_names


def classify_rows(model, class_names: list[str], transform, rows: list[str], device: torch.device) -> int:
    if minus_heuristic(rows):
        return 13

    img = rows_to_image(rows)
    tensor = transform(img).unsqueeze(0).to(device)
    with torch.no_grad():
        pred = int(model(tensor).argmax(dim=1).item())

    if pred < 0 or pred >= len(class_names):
        return 31
    return hw_char_code(class_names[pred])


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Receive normalized FPGA crops over UART, classify on PC, send char codes back."
    )
    parser.add_argument("--port", default=None, help="Serial port, for example COM6.")
    parser.add_argument("--baud", type=int, default=115200)
    parser.add_argument("--model", type=Path, default=DEFAULT_MODEL)
    parser.add_argument("--timeout", type=float, default=30.0)
    parser.add_argument("--list-ports", action="store_true")
    args = parser.parse_args()

    try:
        import serial
        import serial.tools.list_ports
    except ImportError as exc:
        raise SystemExit("Install pyserial first: pip install pyserial") from exc

    device = torch.device("cpu")
    model, class_names = load_model(args.model, device)
    transform = build_transform(augment=False)

    port = choose_serial_port(serial, args.port, args.list_ports)
    print(f"model={args.model} device={device} classes={class_names}")
    print("waiting for FPGA BEGIN blocks...")

    with serial.Serial(port, args.baud, timeout=0.5) as ser:
        while True:
            try:
                chars = read_frame(ser, args.timeout)
                codes = [classify_rows(model, class_names, transform, rows, device) for rows in chars]
                response = "R " + " ".join(f"{code:02X}" for code in codes) + "\n"
                ser.write(response.encode("ascii"))
                ser.flush()
                print(f"sent {response.strip()}")
            except KeyboardInterrupt:
                print("\nstopped")
                break
            except TimeoutError as exc:
                print(f"waiting: {exc}")


if __name__ == "__main__":
    main()
