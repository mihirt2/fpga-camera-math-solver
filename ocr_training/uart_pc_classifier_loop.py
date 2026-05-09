import argparse
from dataclasses import dataclass
import time
from pathlib import Path

import numpy as np
import torch
from PIL import Image

from capture_uart_norm import IMG_H, IMG_W, choose_serial_port, read_frame
from new_train_cnn import BetterMathCNN, build_transform, hw_char_code


DEFAULT_MODEL = Path("ocr_training/models/new_model.pt")
REJECT_CODE = 31
MINUS_CODE = 13
DEFAULT_REJECT_LABELS = {"equals"}


@dataclass
class Prediction:
    code: int
    label: str
    margin: float
    second_label: str
    rejected: bool
    source: str
    ink_count: int
    bbox_w: int
    bbox_h: int
    density: float


def rows_to_image(rows: list[str]) -> Image.Image:
    arr = np.full((IMG_H, IMG_W), 255, dtype=np.uint8)
    for y, row in enumerate(rows):
        for x, ch in enumerate(row):
            arr[y, x] = 0 if ch == "1" else 255
    return Image.fromarray(arr)


def bitmap_stats(rows: list[str]) -> tuple[int, int, int, float]:
    xs: list[int] = []
    ys: list[int] = []
    for y, row in enumerate(rows):
        for x, ch in enumerate(row):
            if ch == "1":
                xs.append(x)
                ys.append(y)
    if not xs:
        return 0, 0, 0, 0.0
    width = max(xs) - min(xs) + 1
    height = max(ys) - min(ys) + 1
    density = len(xs) / max(1, width * height)
    return len(xs), width, height, density


def minus_heuristic(rows: list[str]) -> bool:
    ink_count, width, height, density = bitmap_stats(rows)
    if ink_count < 3:
        return False
    if height == 0 or width < 3:
        return False
    aspect = width / height
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


def classify_rows(
    model,
    class_names: list[str],
    transform,
    rows: list[str],
    device: torch.device,
    min_margin: float,
    reject_labels: set[str],
) -> Prediction:
    ink_count, bbox_w, bbox_h, density = bitmap_stats(rows)

    if minus_heuristic(rows):
        return Prediction(
            code=MINUS_CODE,
            label="minus",
            margin=float("inf"),
            second_label="heuristic",
            rejected=False,
            source="minus_heuristic",
            ink_count=ink_count,
            bbox_w=bbox_w,
            bbox_h=bbox_h,
            density=density,
        )

    img = rows_to_image(rows)
    tensor = transform(img).unsqueeze(0).to(device)
    with torch.no_grad():
        logits = model(tensor)
        top2 = torch.topk(logits, k=min(2, len(class_names)), dim=1)
        pred = int(top2.indices[0, 0].item())
        if len(class_names) > 1:
            second = int(top2.indices[0, 1].item())
            margin = float((top2.values[0, 0] - top2.values[0, 1]).item())
            second_label = class_names[second]
        else:
            margin = float("inf")
            second_label = ""

    if pred < 0 or pred >= len(class_names):
        return Prediction(
            code=REJECT_CODE,
            label="invalid",
            margin=margin,
            second_label=second_label,
            rejected=True,
            source="cnn",
            ink_count=ink_count,
            bbox_w=bbox_w,
            bbox_h=bbox_h,
            density=density,
        )

    label = class_names[pred]
    code = hw_char_code(label)
    rejected = (margin < min_margin) or (code == REJECT_CODE) or (label in reject_labels)
    return Prediction(
        code=REJECT_CODE if rejected else code,
        label=label,
        margin=margin,
        second_label=second_label,
        rejected=rejected,
        source="cnn",
        ink_count=ink_count,
        bbox_w=bbox_w,
        bbox_h=bbox_h,
        density=density,
    )


def save_debug_frame(debug_dir: Path, frame_index: int, rows_by_char: list[list[str]], preds: list[Prediction]) -> None:
    frame_dir = debug_dir / f"{time.strftime('%Y%m%d_%H%M%S')}_{frame_index:04d}"
    frame_dir.mkdir(parents=True, exist_ok=True)
    for idx, (rows, pred) in enumerate(zip(rows_by_char, preds)):
        safe_label = "".join(ch if ch.isalnum() else "_" for ch in pred.label)
        suffix = "reject" if pred.rejected else "accept"
        path = frame_dir / (
            f"{idx:02d}_{suffix}_{safe_label}_m{pred.margin:.2f}"
            f"_ink{pred.ink_count}_box{pred.bbox_w}x{pred.bbox_h}.png"
        )
        rows_to_image(rows).save(path)


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Receive normalized FPGA crops over UART, classify on PC, send char codes back."
    )
    parser.add_argument("--port", default=None, help="Serial port, for example COM6.")
    parser.add_argument("--baud", type=int, default=115200)
    parser.add_argument("--model", type=Path, default=DEFAULT_MODEL)
    parser.add_argument("--timeout", type=float, default=30.0)
    parser.add_argument("--list-ports", action="store_true")
    parser.add_argument(
        "--min-margin",
        type=float,
        default=1.0,
        help="Reject CNN predictions when top1-top2 logit margin is below this value. Use 0 to disable.",
    )
    parser.add_argument(
        "--quiet",
        action="store_true",
        help="Only print UART responses, not per-character prediction details.",
    )
    parser.add_argument(
        "--reject-label",
        action="append",
        default=[],
        help="Always reject this predicted label. May be repeated. Default rejects 'equals'.",
    )
    parser.add_argument(
        "--allow-equals",
        action="store_true",
        help="Do not reject the CNN's equals class. Usually not wanted for solver input.",
    )
    parser.add_argument(
        "--save-debug-dir",
        type=Path,
        default=None,
        help="Save every received normalized crop with prediction/margin stats.",
    )
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
    reject_labels = set(args.reject_label)
    if not args.allow_equals:
        reject_labels |= DEFAULT_REJECT_LABELS

    with serial.Serial(port, args.baud, timeout=0.5) as ser:
        frame_index = 0
        while True:
            try:
                chars = read_frame(ser, args.timeout)
                preds = [
                    classify_rows(
                        model,
                        class_names,
                        transform,
                        rows,
                        device,
                        args.min_margin,
                        reject_labels,
                    )
                    for rows in chars
                ]
                if args.save_debug_dir is not None:
                    save_debug_frame(args.save_debug_dir, frame_index, chars, preds)
                    frame_index += 1
                codes = [pred.code for pred in preds]
                response = "R " + " ".join(f"{code:02X}" for code in codes) + "\n"
                ser.write(response.encode("ascii"))
                ser.flush()
                if not args.quiet:
                    detail = " | ".join(
                        (
                            f"{idx}:{pred.label}"
                            f"/{pred.second_label}"
                            f" margin={pred.margin:.2f}"
                            f" ink={pred.ink_count}"
                            f" box={pred.bbox_w}x{pred.bbox_h}"
                            f" dens={pred.density:.2f}"
                            f" code={pred.code:02X}"
                            f"{' REJECT' if pred.rejected else ''}"
                            f" [{pred.source}]"
                        )
                        for idx, pred in enumerate(preds)
                    )
                    print(detail)
                print(f"sent {response.strip()}")
            except KeyboardInterrupt:
                print("\nstopped")
                break
            except TimeoutError as exc:
                print(f"waiting: {exc}")


if __name__ == "__main__":
    main()
