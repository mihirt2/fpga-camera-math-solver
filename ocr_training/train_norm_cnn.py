from __future__ import annotations

import argparse
import json
import random
from pathlib import Path

import numpy as np
import torch
import torch.nn as nn
from PIL import Image, ImageOps
from torch.utils.data import DataLoader, Dataset


IMG_H = 32
IMG_W = 16
FRAC_BITS = 8
SCALE = 1 << FRAC_BITS

DEFAULT_DATA_ROOT = Path("ocr_training/data/normalized_chars/labeled")
DEFAULT_RUN_DIR = Path("ocr_training/runs/norm_cnn")


class BlackInkOnWhite:
    def __init__(self, threshold: int = 192):
        self.threshold = threshold

    def __call__(self, img: Image.Image) -> Image.Image:
        img = img.convert("L")
        arr = np.array(img)
        if arr.mean() < 127:
            img = ImageOps.invert(img)
        img = ImageOps.autocontrast(img)
        arr = np.array(img)
        bw = np.where(arr < self.threshold, 0, 255).astype(np.uint8)
        return Image.fromarray(bw)


class SaltPepperNoise:
    def __init__(self, p: float = 0.85, salt_prob: float = 0.003, pepper_prob: float = 0.003):
        self.p = p
        self.salt_prob = salt_prob
        self.pepper_prob = pepper_prob

    def __call__(self, img: Image.Image) -> Image.Image:
        if random.random() > self.p:
            return img
        arr = np.array(img.convert("L")).copy()
        salt = np.random.rand(*arr.shape) < self.salt_prob
        pepper = np.random.rand(*arr.shape) < self.pepper_prob
        arr[salt] = 255
        arr[pepper] = 0
        return Image.fromarray(arr.astype(np.uint8))


class NormCropTransform:
    def __init__(self, augment: bool):
        self.augment = augment
        self.black_ink = BlackInkOnWhite(threshold=192)
        self.noise = SaltPepperNoise(p=0.85, salt_prob=0.003, pepper_prob=0.003)

    def __call__(self, img: Image.Image) -> torch.Tensor:
        resample = getattr(Image.Resampling, "NEAREST", Image.NEAREST)
        img = img.convert("L").resize((IMG_W, IMG_H), resample)
        img = self.black_ink(img)
        if self.augment:
            img = self.random_shift_scale(img)
            img = self.noise(img)
        arr = np.array(img, dtype=np.float32) / 255.0
        arr = arr * 2.0 - 1.0
        return torch.from_numpy(arr).unsqueeze(0)

    @staticmethod
    def random_shift_scale(img: Image.Image) -> Image.Image:
        resample = getattr(Image.Resampling, "NEAREST", Image.NEAREST)
        scale = random.uniform(0.92, 1.08)
        new_w = max(1, int(round(IMG_W * scale)))
        new_h = max(1, int(round(IMG_H * scale)))
        scaled = img.resize((new_w, new_h), resample)

        max_dx = max(1, int(round(IMG_W * 0.08)))
        max_dy = max(1, int(round(IMG_H * 0.08)))
        dx = random.randint(-max_dx, max_dx)
        dy = random.randint(-max_dy, max_dy)

        canvas = Image.new("L", (IMG_W, IMG_H), 255)
        left = (IMG_W - new_w) // 2 + dx
        top = (IMG_H - new_h) // 2 + dy
        canvas.paste(scaled, (left, top))
        return canvas


class TinyMathCNN(nn.Module):
    def __init__(self, num_classes: int):
        super().__init__()
        self.features = nn.Sequential(
            nn.Conv2d(1, 8, kernel_size=3, padding=1, bias=False),
            nn.ReLU(inplace=True),
            nn.MaxPool2d(2),
            nn.Conv2d(8, 16, kernel_size=3, padding=1, bias=False),
            nn.ReLU(inplace=True),
            nn.MaxPool2d(2),
            nn.Conv2d(16, 24, kernel_size=3, padding=1, bias=False),
            nn.ReLU(inplace=True),
            nn.MaxPool2d(2),
        )
        self.classifier = nn.Sequential(
            nn.Flatten(),
            nn.Linear(24 * 4 * 2, 32),
            nn.ReLU(inplace=True),
            nn.Dropout(0.3),
            nn.Linear(32, num_classes),
        )

    def forward(self, x: torch.Tensor) -> torch.Tensor:
        return self.classifier(self.features(x))


class ImageListDataset(Dataset):
    def __init__(self, samples: list[tuple[str, int]], transform):
        self.samples = samples
        self.transform = transform

    def __len__(self) -> int:
        return len(self.samples)

    def __getitem__(self, index: int):
        path, label = self.samples[index]
        img = Image.open(path).convert("L")
        return self.transform(img), label


def build_transform(augment: bool):
    return NormCropTransform(augment=augment)


def load_image_folder(data_root: Path) -> tuple[list[str], list[tuple[str, int]]]:
    exts = {".png", ".jpg", ".jpeg", ".bmp", ".pbm"}
    class_dirs = sorted(p for p in data_root.iterdir() if p.is_dir())
    class_names = [p.name for p in class_dirs]
    samples: list[tuple[str, int]] = []
    for label, class_dir in enumerate(class_dirs):
        for path in sorted(class_dir.rglob("*")):
            if path.is_file() and path.suffix.lower() in exts:
                samples.append((str(path), label))
    return class_names, samples


def split_samples(samples: list[tuple[str, int]], seed: int, val_split: float, test_split: float):
    rng = random.Random(seed)
    by_class: dict[int, list[tuple[str, int]]] = {}
    for sample in samples:
        by_class.setdefault(sample[1], []).append(sample)

    train: list[tuple[str, int]] = []
    val: list[tuple[str, int]] = []
    test: list[tuple[str, int]] = []

    for class_samples in by_class.values():
        rng.shuffle(class_samples)
        n = len(class_samples)
        n_val = 1 if n >= 3 else 0
        n_test = 1 if n >= 4 else 0
        n_val = max(n_val, int(round(n * val_split))) if n >= 5 else n_val
        n_test = max(n_test, int(round(n * test_split))) if n >= 5 else n_test
        if n_val + n_test >= n:
            n_val = 1 if n >= 3 else 0
            n_test = 1 if n >= 4 else 0
        val.extend(class_samples[:n_val])
        test.extend(class_samples[n_val : n_val + n_test])
        train.extend(class_samples[n_val + n_test :])

    rng.shuffle(train)
    rng.shuffle(val)
    rng.shuffle(test)
    return train, val, test


def accuracy(model: nn.Module, loader: DataLoader, device: torch.device) -> float:
    if len(loader.dataset) == 0:
        return 0.0
    model.eval()
    correct = 0
    total = 0
    with torch.no_grad():
        for imgs, labels in loader:
            imgs = imgs.to(device)
            labels = labels.to(device)
            preds = model(imgs).argmax(dim=1)
            correct += (preds == labels).sum().item()
            total += labels.numel()
    return correct / max(total, 1)


def quantize_q8_8(tensor: torch.Tensor) -> np.ndarray:
    q = torch.round(tensor.detach().cpu() * SCALE)
    q = torch.clamp(q, -32768, 32767).to(torch.int16)
    return q.numpy().reshape(-1).astype(np.int16)


def save_flat(out_dir: Path, name: str, tensor: torch.Tensor) -> None:
    arr = quantize_q8_8(tensor)
    np.savetxt(out_dir / f"{name}.txt", arr, fmt="%d")
    with (out_dir / f"{name}.mem").open("w", encoding="ascii", newline="\n") as f:
        for value in arr:
            f.write(f"{np.uint16(value):04x}\n")


def hw_char_code(name: str) -> int:
    key = str(name).strip().lower()
    aliases = {
        "+": 10,
        "plus": 10,
        "add": 10,
        "-": 11,
        "minus": 11,
        "x": 11,
        "sub": 11,
        "subtract": 11,
        "*": 12,
        "times": 12,
        "mul": 12,
        "multiply": 12,
        "=": 13,
        "eq": 13,
        "equal": 13,
        "equals": 13,
        "(": 14,
        "lparen": 14,
        "left_paren": 14,
        "left_parenthesis": 14,
        "open_paren": 14,
        "open_parenthesis": 14,
        "open_bracket": 14,
        ")": 15,
        "rparen": 15,
        "right_paren": 15,
        "right_parenthesis": 15,
        "close_paren": 15,
        "close_parenthesis": 15,
        "close_bracket": 15,
    }
    if key.isdigit() and len(key) == 1:
        return int(key)
    return aliases.get(key, 15)


def pad_class_names(class_names: list[str], samples: list[tuple[str, int]], num_classes: int) -> list[str]:
    if num_classes <= 0:
        return class_names
    if len(class_names) > num_classes:
        raise SystemExit(
            f"Dataset has {len(class_names)} classes, but --num-classes is {num_classes}. "
            "Increase --num-classes or remove unexpected class folders."
        )
    padded = list(class_names)
    while len(padded) < num_classes:
        padded.append(f"unused_{len(padded)}")

    max_label = max((label for _, label in samples), default=-1)
    if max_label >= len(padded):
        raise SystemExit("Internal label mapping error: sample label exceeds class count")
    return padded


def export_vivado(model: TinyMathCNN, class_names: list[str], out_dir: Path) -> None:
    model.eval()
    out_dir.mkdir(parents=True, exist_ok=True)

    save_flat(out_dir, "conv1_weight", model.features[0].weight)
    save_flat(out_dir, "conv2_weight", model.features[3].weight)
    save_flat(out_dir, "conv3_weight", model.features[6].weight)
    save_flat(out_dir, "fc1_weight", model.classifier[1].weight)
    save_flat(out_dir, "fc1_bias", model.classifier[1].bias)
    save_flat(out_dir, "fc2_weight", model.classifier[4].weight)
    save_flat(out_dir, "fc2_bias", model.classifier[4].bias)

    codes = [hw_char_code(name) for name in class_names]
    np.savetxt(out_dir / "class_code.txt", np.array(codes, dtype=np.int16), fmt="%d")
    with (out_dir / "class_code.mem").open("w", encoding="ascii", newline="\n") as f:
        for code in codes:
            f.write(f"{code & 0xF:x}\n")


def train(args: argparse.Namespace) -> None:
    random.seed(args.seed)
    np.random.seed(args.seed)
    torch.manual_seed(args.seed)

    data_root = Path(args.data_root)
    if not data_root.exists():
        raise SystemExit(f"Data root does not exist: {data_root}")
    class_names, samples = load_image_folder(data_root)
    if len(samples) == 0:
        raise SystemExit(f"No images found in {data_root}")
    class_names = pad_class_names(class_names, samples, args.num_classes)

    train_samples, val_samples, test_samples = split_samples(
        samples, args.seed, args.val_split, args.test_split
    )
    if not train_samples:
        raise SystemExit("Not enough images to make a training split")

    device = torch.device("cpu" if args.cpu or not torch.cuda.is_available() else "cuda")
    model = TinyMathCNN(num_classes=len(class_names)).to(device)

    train_ds = ImageListDataset(train_samples, build_transform(augment=args.augment))
    val_ds = ImageListDataset(val_samples, build_transform(augment=False))
    test_ds = ImageListDataset(test_samples, build_transform(augment=False))

    train_loader = DataLoader(train_ds, batch_size=args.batch_size, shuffle=True)
    val_loader = DataLoader(val_ds, batch_size=args.batch_size, shuffle=False)
    test_loader = DataLoader(test_ds, batch_size=args.batch_size, shuffle=False)

    counts = torch.zeros(len(class_names), dtype=torch.float32)
    for _, label in train_samples:
        counts[label] += 1
    weights = counts.sum() / torch.clamp(counts, min=1.0)
    weights = weights / weights.mean()

    criterion = nn.CrossEntropyLoss(weight=weights.to(device))
    optimizer = torch.optim.Adam(model.parameters(), lr=args.lr, weight_decay=args.weight_decay)

    run_dir = Path(args.run_dir)
    run_dir.mkdir(parents=True, exist_ok=True)
    best_path = run_dir / "best_model.pt"

    best_val = -1.0
    epochs_without_improvement = 0
    for epoch in range(1, args.epochs + 1):
        model.train()
        total_loss = 0.0
        for imgs, labels in train_loader:
            imgs = imgs.to(device)
            labels = labels.to(device)
            optimizer.zero_grad(set_to_none=True)
            logits = model(imgs)
            loss = criterion(logits, labels)
            loss.backward()
            optimizer.step()
            total_loss += loss.item() * labels.numel()

        train_acc = accuracy(model, train_loader, device)
        val_acc = accuracy(model, val_loader, device) if len(val_ds) else train_acc
        avg_loss = total_loss / len(train_ds)
        print(
            f"epoch {epoch:03d} loss={avg_loss:.4f} "
            f"train_acc={train_acc:.3f} val_acc={val_acc:.3f}"
        )

        if val_acc > best_val:
            best_val = val_acc
            epochs_without_improvement = 0
            torch.save(
                {
                    "model_state_dict": model.state_dict(),
                    "class_names": class_names,
                    "img_h": IMG_H,
                    "img_w": IMG_W,
                    "best_val_acc": best_val,
                },
                best_path,
            )
        else:
            epochs_without_improvement += 1
            if epochs_without_improvement >= args.patience:
                print(f"early stop after {args.patience} epochs without val improvement")
                break

    checkpoint = torch.load(best_path, map_location=device)
    model.load_state_dict(checkpoint["model_state_dict"])
    test_acc = accuracy(model, test_loader, device) if len(test_ds) else 0.0

    metadata = {
        "class_names": class_names,
        "train_count": len(train_ds),
        "val_count": len(val_ds),
        "test_count": len(test_ds),
        "best_val_acc": best_val,
        "test_acc": test_acc,
    }
    (run_dir / "metadata.json").write_text(json.dumps(metadata, indent=2), encoding="utf-8")

    print(f"best_val_acc={best_val:.3f} test_acc={test_acc:.3f}")
    print(f"saved checkpoint: {best_path}")

    if args.export_dir:
        export_vivado(model, class_names, Path(args.export_dir))
        print(f"exported Q8.8 Vivado weights to {Path(args.export_dir).resolve()}")


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Train TinyMathCNN on local FPGA-normalized OCR crops.")
    parser.add_argument("--data-root", default=DEFAULT_DATA_ROOT)
    parser.add_argument("--run-dir", default=DEFAULT_RUN_DIR)
    parser.add_argument("--export-dir", default="vivado_q8_8")
    parser.add_argument("--epochs", type=int, default=60)
    parser.add_argument("--batch-size", type=int, default=64)
    parser.add_argument("--lr", type=float, default=1e-3)
    parser.add_argument("--weight-decay", type=float, default=1e-4)
    parser.add_argument("--val-split", type=float, default=0.15)
    parser.add_argument("--test-split", type=float, default=0.15)
    parser.add_argument("--patience", type=int, default=12)
    parser.add_argument("--seed", type=int, default=42)
    parser.add_argument("--cpu", action="store_true")
    parser.add_argument(
        "--augment",
        action="store_true",
        help="Add small shift/scale jitter and mild salt/pepper noise during training. Off by default.",
    )
    parser.add_argument(
        "--num-classes",
        type=int,
        default=18,
        help="Output classes to export. Use 18 for the current tiny_math_cnn_match.sv RTL; use 0 for discovered classes only.",
    )
    return parser


def main() -> None:
    args = build_parser().parse_args()
    train(args)


if __name__ == "__main__":
    main()
