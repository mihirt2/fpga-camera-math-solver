from __future__ import annotations

import argparse
import json
import random
from collections import Counter
from dataclasses import dataclass
from pathlib import Path

import numpy as np
import torch
import torch.nn as nn
from PIL import Image, ImageOps
from torch.utils.data import DataLoader, Dataset, WeightedRandomSampler


IMG_H = 32
IMG_W = 16
FRAC_BITS = 8
SCALE = 1 << FRAC_BITS

DEFAULT_DATA_ROOT = Path("./data/normalized_chars/labeled")
DEFAULT_EXTERNAL_ROOT = Path("./data/external/labeled")
DEFAULT_RUN_DIR = Path("./models")

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
    "caret",
    "open_paren",
    "close_paren",
]

LABEL_ALIASES = {
    "+": "plus",
    "add": "plus",
    "plus": "plus",
    "x": "x",
    "var": "x",
    "variable": "x",
    "*": "times",
    "mul": "times",
    "multiply": "times",
    "times": "times",
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

IGNORED_LABEL_ALIASES = {
    "=",
    "eq",
    "equal",
    "equals",
}

for digit in range(10):
    LABEL_ALIASES[str(digit)] = str(digit)


@dataclass(frozen=True)
class Sample:
    path: str
    label: int
    source: str


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
    def __init__(self, p: float = 0.5, salt_prob: float = 0.002, pepper_prob: float = 0.002):
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


class RandomErasing:
    """Random erasing on a tensor in [-1, 1] range. Fills with white (1.0).

    Capped at small areas because at 32x16 a 15% box wipes out class-defining
    features (top bar of 7, bottom of 2, middle bar of 4, cross of +).
    Also rejects placements that would erase a large fraction of total ink.
    """

    def __init__(self, p: float = 0.25, scale_min: float = 0.01, scale_max: float = 0.06):
        self.p = p
        self.scale_min = scale_min
        self.scale_max = scale_max

    def __call__(self, tensor: torch.Tensor) -> torch.Tensor:
        if random.random() > self.p:
            return tensor
        _, h, w = tensor.shape
        area = h * w
        # Build an ink mask (pixels < 0 in [-1, 1] space are dark/ink).
        ink_mask = (tensor[0] < 0.0).float()
        total_ink = ink_mask.sum().item()
        for _ in range(10):
            target_area = random.uniform(self.scale_min, self.scale_max) * area
            aspect = random.uniform(0.5, 2.0)
            eh = int(round((target_area * aspect) ** 0.5))
            ew = int(round((target_area / aspect) ** 0.5))
            if 0 < eh < h and 0 < ew < w:
                top = random.randint(0, h - eh)
                left = random.randint(0, w - ew)
                # Reject if this box would wipe out > 25% of the image's ink.
                box_ink = ink_mask[top:top + eh, left:left + ew].sum().item()
                if total_ink > 0 and box_ink > 0.25 * total_ink:
                    continue
                tensor[:, top:top + eh, left:left + ew] = 1.0
                return tensor
        return tensor


class HorizontalLineErase:
    """Erase a thin horizontal line spanning the full width. Models scan-line
    sensor noise.

    Crucial: this can wipe out the *only* horizontal stroke in characters like
    7, 2, 4, +, =. We reject rows that contain more than `max_ink_fraction`
    of the image's total ink so we never delete a class-defining bar.
    """

    def __init__(
        self,
        p: float = 0.2,
        max_lines: int = 2,
        max_thickness: int = 1,
        max_ink_fraction: float = 0.18,
    ):
        self.p = p
        self.max_lines = max_lines
        self.max_thickness = max_thickness
        self.max_ink_fraction = max_ink_fraction

    def __call__(self, tensor: torch.Tensor) -> torch.Tensor:
        if random.random() > self.p:
            return tensor
        _, h, w = tensor.shape
        ink_mask = (tensor[0] < 0.0).float()
        total_ink = ink_mask.sum().item()
        if total_ink == 0:
            return tensor
        row_ink = ink_mask.sum(dim=1)  # (h,)

        n_lines = random.randint(1, self.max_lines)
        for _ in range(n_lines):
            thickness = random.randint(1, self.max_thickness)
            if thickness >= h:
                continue
            for _try in range(8):
                top = random.randint(0, h - thickness)
                band_ink = row_ink[top:top + thickness].sum().item()
                if band_ink / total_ink <= self.max_ink_fraction:
                    tensor[:, top:top + thickness, :] = 1.0
                    break
        return tensor


class HorizontalBlackLine:
    """Add thin black horizontal artifacts seen in some hardware captures."""

    def __init__(self, p: float = 0.2, max_lines: int = 2, max_thickness: int = 1):
        self.p = p
        self.max_lines = max_lines
        self.max_thickness = max_thickness

    def __call__(self, tensor: torch.Tensor) -> torch.Tensor:
        if random.random() > self.p:
            return tensor
        _, h, _ = tensor.shape
        n_lines = random.randint(1, self.max_lines)
        for _ in range(n_lines):
            thickness = random.randint(1, self.max_thickness)
            if thickness >= h:
                continue
            top = random.randint(0, h - thickness)
            tensor[:, top:top + thickness, :] = -1.0
        return tensor


class NormCropTransform:
    def __init__(self, augment: bool, crop_ink: bool = False):
        self.augment = augment
        self.crop_ink = crop_ink
        self.black_ink = BlackInkOnWhite(threshold=192)
        self.noise = SaltPepperNoise(p=0.5, salt_prob=0.002, pepper_prob=0.002)
        self.erasing = RandomErasing(p=0.25, scale_min=0.01, scale_max=0.06)
        self.line_erase = HorizontalLineErase(
            p=0.2, max_lines=2, max_thickness=1, max_ink_fraction=0.18
        )
        self.black_line = HorizontalBlackLine(p=0.2, max_lines=2, max_thickness=1)

    def __call__(self, img: Image.Image) -> torch.Tensor:
        img = img.convert("L")
        if self.crop_ink:
            img = self.crop_to_ink_box(img)
        if self.augment:
            img = self.random_pad(img)
        resample_nearest = getattr(Image.Resampling, "NEAREST", Image.NEAREST)
        img = img.resize((IMG_W, IMG_H), resample_nearest)
        if self.augment:
            img = self.random_skew(img)
        img = self.black_ink(img)
        if self.augment:
            img = self.random_shift_scale(img)
            img = self.noise(img)
        arr = np.array(img, dtype=np.float32) / 255.0
        arr = arr * 2.0 - 1.0
        tensor = torch.from_numpy(arr).unsqueeze(0)
        if self.augment:
            tensor = self.erasing(tensor)
            tensor = self.line_erase(tensor)
            tensor = self.black_line(tensor)
        return tensor

    @staticmethod
    def crop_to_ink_box(img: Image.Image) -> Image.Image:
        img = img.convert("L")
        arr = np.array(img)
        if arr.mean() < 127:
            img = ImageOps.invert(img)
            arr = np.array(img)
        img = ImageOps.autocontrast(img)
        arr = np.array(img)
        ink = arr < 192
        if float(ink.mean()) < 0.01:
            return img

        ys, xs = np.where(ink)
        x_min = int(xs.min())
        x_max = int(xs.max())
        y_min = int(ys.min())
        y_max = int(ys.max())
        ink_w = x_max - x_min + 1
        ink_h = y_max - y_min + 1
        pad_x = max(1, int(round(ink_w * 0.20)))
        pad_y = max(1, int(round(ink_h * 0.20)))
        x_min = max(0, x_min - pad_x)
        x_max = min(arr.shape[1] - 1, x_max + pad_x)
        y_min = max(0, y_min - pad_y)
        y_max = min(arr.shape[0] - 1, y_max + pad_y)
        return Image.fromarray(arr[y_min:y_max + 1, x_min:x_max + 1])

    @staticmethod
    def random_pad(img: Image.Image) -> Image.Image:
        """Asymmetric padding around the original. Gentler than before --
        big pads zoom the character out so much that a 32x16 resize leaves
        only a few pixels of stroke.
        """
        if random.random() > 0.4:
            return img
        arr = np.array(img.convert("L"))
        fill = 255 if arr.mean() >= 127 else 0
        w, h = img.size
        pad_l = random.randint(0, max(1, int(w * 0.08)))
        pad_r = random.randint(0, max(1, int(w * 0.08)))
        pad_t = random.randint(0, max(1, int(h * 0.08)))
        pad_b = random.randint(0, max(1, int(h * 0.08)))
        return ImageOps.expand(img, border=(pad_l, pad_t, pad_r, pad_b), fill=fill)

    @staticmethod
    def random_skew(img: Image.Image) -> Image.Image:
        # Smaller shear range -- approx +/-0.10 is roughly +/-5.7 degrees,
        # plenty for natural slant variation without warping 7s and 1s into
        # each other.
        shear_x = random.uniform(-0.10, 0.10)
        shear_y = random.uniform(-0.04, 0.04)

        w, h = img.size
        cx, cy = w / 2.0, h / 2.0
        det = 1.0 - shear_x * shear_y
        a = 1.0 / det
        b = -shear_x / det
        d = -shear_y / det
        e = 1.0 / det
        c = cx - a * cx - b * cy
        f = cy - d * cx - e * cy

        resample = getattr(Image.Resampling, "BILINEAR", Image.BILINEAR)
        return img.transform(
            (w, h), Image.AFFINE, (a, b, c, d, e, f),
            resample=resample, fillcolor=255,
        )

    @staticmethod
    def random_shift_scale(img: Image.Image) -> Image.Image:
        resample = getattr(Image.Resampling, "NEAREST", Image.NEAREST)
        scale = random.uniform(0.94, 1.06)
        new_w = max(1, int(round(IMG_W * scale)))
        new_h = max(1, int(round(IMG_H * scale)))
        scaled = img.resize((new_w, new_h), resample)

        max_dx = max(1, int(round(IMG_W * 0.06)))
        max_dy = max(1, int(round(IMG_H * 0.06)))
        dx = random.randint(-max_dx, max_dx)
        dy = random.randint(-max_dy, max_dy)

        canvas = Image.new("L", (IMG_W, IMG_H), 255)
        left = (IMG_W - new_w) // 2 + dx
        top = (IMG_H - new_h) // 2 + dy
        canvas.paste(scaled, (left, top))
        return canvas


class BetterMathCNN(nn.Module):
    """Wider CNN with BatchNorm, GELU, strided-conv downsampling, and global avg pool.

    Input: (N, 1, 32, 16) tensor in [-1, 1].
    Spatial: 32x16 -> 16x8 -> 8x4 -> 4x2 -> GAP -> 1x1.
    """

    def __init__(self, num_classes: int):
        super().__init__()

        def block(in_c: int, out_c: int) -> nn.Sequential:
            return nn.Sequential(
                nn.Conv2d(in_c, out_c, kernel_size=3, padding=1, bias=False),
                nn.BatchNorm2d(out_c),
                nn.GELU(),
                nn.Conv2d(out_c, out_c, kernel_size=3, padding=1, stride=2, bias=False),
                nn.BatchNorm2d(out_c),
                nn.GELU(),
            )

        self.features = nn.Sequential(
            block(1, 32),
            block(32, 64),
            block(64, 128),
            nn.AdaptiveAvgPool2d(1),
        )
        self.classifier = nn.Sequential(
            nn.Flatten(),
            nn.Dropout(0.2),
            nn.Linear(128, num_classes),
        )

    def forward(self, x: torch.Tensor) -> torch.Tensor:
        return self.classifier(self.features(x))


class ImageListDataset(Dataset):
    def __init__(self, samples: list[Sample], local_transform, external_transform):
        self.samples = samples
        self.local_transform = local_transform
        self.external_transform = external_transform

    def __len__(self) -> int:
        return len(self.samples)

    def __getitem__(self, index: int):
        sample = self.samples[index]
        img = Image.open(sample.path).convert("L")
        transform = self.external_transform if sample.source == "external" else self.local_transform
        return transform(img), sample.label


def build_transform(augment: bool, crop_ink: bool = False):
    return NormCropTransform(augment=augment, crop_ink=crop_ink)


def normalize_label(label: str) -> str | None:
    key = label.strip().lower()
    key = key.replace(" ", "_").replace("-", "_")
    if key in IGNORED_LABEL_ALIASES:
        return None
    return LABEL_ALIASES.get(key)


def infer_label(path: Path) -> str | None:
    candidates = [path.parent.name, path.stem]
    for candidate in candidates:
        label = normalize_label(candidate)
        if label is not None:
            return label
        key = candidate.strip().lower().replace(" ", "_").replace("-", "_")
        if key in IGNORED_LABEL_ALIASES:
            return None

    aliases = sorted([*LABEL_ALIASES, *IGNORED_LABEL_ALIASES], key=len, reverse=True)
    stem = path.stem.strip().lower().replace(" ", "_").replace("-", "_")
    for alias in aliases:
        safe_alias = alias.replace(" ", "_").replace("-", "_")
        if stem == safe_alias or stem.startswith(safe_alias + "_") or stem.endswith("_" + safe_alias):
            return normalize_label(alias)
    return None


def load_image_folder(
    data_root: Path,
    class_to_label: dict[str, int],
    source: str,
    limit_per_class: int = 0,
) -> tuple[list[Sample], dict[str, int]]:
    exts = {".png", ".jpg", ".jpeg", ".bmp", ".pbm"}
    samples: list[Sample] = []
    ignored: Counter[str] = Counter()
    kept_by_class: Counter[str] = Counter()
    if not data_root.exists():
        return samples, dict(ignored)

    for path in sorted(p for p in data_root.rglob("*") if p.is_file() and p.suffix.lower() in exts):
        label_name = infer_label(path)
        if label_name is None:
            ignored[path.parent.name] += 1
            continue
        if label_name not in class_to_label:
            ignored[label_name] += 1
            continue
        if limit_per_class and kept_by_class[label_name] >= limit_per_class:
            ignored[f"{label_name}:over_limit"] += 1
            continue
        samples.append(Sample(path=str(path), label=class_to_label[label_name], source=source))
        kept_by_class[label_name] += 1
    return samples, dict(ignored)


def split_samples(samples: list[Sample], seed: int, val_split: float, test_split: float):
    rng = random.Random(seed)
    by_class: dict[int, list[Sample]] = {}
    for sample in samples:
        by_class.setdefault(sample.label, []).append(sample)

    train: list[Sample] = []
    val: list[Sample] = []
    test: list[Sample] = []

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


def confusion_matrix(model: nn.Module, loader: DataLoader, device: torch.device, num_classes: int) -> list[list[int]]:
    matrix = torch.zeros((num_classes, num_classes), dtype=torch.int64)
    model.eval()
    with torch.no_grad():
        for imgs, labels in loader:
            imgs = imgs.to(device)
            preds = model(imgs).argmax(dim=1).cpu()
            for actual, pred in zip(labels.cpu(), preds):
                matrix[int(actual), int(pred)] += 1
    return matrix.tolist()


def summarize_samples(samples: list[Sample], class_names: list[str]) -> dict[str, dict[str, int]]:
    summary: dict[str, dict[str, int]] = {}
    for sample in samples:
        source_counts = summary.setdefault(class_names[sample.label], {})
        source_counts[sample.source] = source_counts.get(sample.source, 0) + 1
    return summary


def build_sampler(samples: list[Sample]) -> WeightedRandomSampler | None:
    if not samples:
        return None
    class_counts = Counter(sample.label for sample in samples)
    source_counts = Counter(sample.source for sample in samples)
    weights = [
        1.0 / max(class_counts[sample.label], 1) / max(source_counts[sample.source], 1)
        for sample in samples
    ]
    return WeightedRandomSampler(weights, num_samples=len(samples), replacement=True)


def hw_char_code(name: str) -> int:
    key = str(name).strip().lower()
    aliases = {
        "+": 10,
        "plus": 10,
        "add": 10,
        "-": 13,
        "minus": 13,
        "x": 11,
        "sub": 13,
        "subtract": 13,
        "*": 12,
        "times": 12,
        "mul": 12,
        "multiply": 12,
        "^": 16,
        "caret": 16,
        "power": 16,
        "pow": 16,
        "exponent": 16,
        "exponentiation": 16,
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
    return aliases.get(key, 31)


def train(args: argparse.Namespace) -> None:
    random.seed(args.seed)
    np.random.seed(args.seed)
    torch.manual_seed(args.seed)

    data_root = Path(args.data_root)
    if not data_root.exists():
        raise SystemExit(f"Data root does not exist: {data_root}")

    class_names = list(CLASS_NAMES)
    class_to_label = {name: idx for idx, name in enumerate(class_names)}
    local_samples, ignored_local = load_image_folder(
        data_root, class_to_label, source="local", limit_per_class=0
    )
    if len(local_samples) == 0:
        raise SystemExit(f"No images found in {data_root}")

    local_train_samples, val_samples, test_samples = split_samples(
        local_samples, args.seed, args.val_split, args.test_split
    )
    external_samples: list[Sample] = []
    ignored_external: dict[str, int] = {}
    external_root = Path(args.external_root)
    if args.use_external:
        if not external_root.exists():
            raise SystemExit(f"External root does not exist: {external_root}")
        external_samples, ignored_external = load_image_folder(
            external_root,
            class_to_label,
            source="external",
            limit_per_class=args.external_limit_per_class,
        )

    train_samples = local_train_samples + external_samples
    if not train_samples:
        raise SystemExit("Not enough images to make a training split")

    summary = {
        "classes": class_names,
        "excluded_classes": ["equals"],
        "local": summarize_samples(local_samples, class_names),
        "local_train": summarize_samples(local_train_samples, class_names),
        "val": summarize_samples(val_samples, class_names),
        "test": summarize_samples(test_samples, class_names),
        "external_train": summarize_samples(external_samples, class_names),
        "ignored": {
            "local": ignored_local,
            "external": ignored_external,
        },
    }
    if args.summary_only:
        print(json.dumps(summary, indent=2))
        return

    device = torch.device("cpu" if args.cpu or not torch.cuda.is_available() else "cuda")
    model = BetterMathCNN(num_classes=len(class_names)).to(device)

    train_ds = ImageListDataset(
        train_samples,
        local_transform=build_transform(augment=args.augment, crop_ink=False),
        external_transform=build_transform(augment=args.augment, crop_ink=True),
    )
    eval_local_transform = build_transform(augment=False, crop_ink=False)
    eval_external_transform = build_transform(augment=False, crop_ink=True)
    val_ds = ImageListDataset(val_samples, eval_local_transform, eval_external_transform)
    test_ds = ImageListDataset(test_samples, eval_local_transform, eval_external_transform)

    train_sampler = build_sampler(train_samples) if args.balanced_sampler else None
    train_loader = DataLoader(
        train_ds,
        batch_size=args.batch_size,
        shuffle=train_sampler is None,
        sampler=train_sampler,
    )
    val_loader = DataLoader(val_ds, batch_size=args.batch_size, shuffle=False)
    test_loader = DataLoader(test_ds, batch_size=args.batch_size, shuffle=False)

    counts = torch.zeros(len(class_names), dtype=torch.float32)
    for sample in train_samples:
        counts[sample.label] += 1
    weights = counts.sum() / torch.clamp(counts, min=1.0)
    weights = weights / weights.mean()

    # Extra 1.4x emphasis on classes the model has historically confused.
    # Applied after inverse-frequency weighting so it stacks on top of class
    # balance rather than replacing it.
    reduce_classes = {"1"}
    for idx, name in enumerate(class_names):
        if name in reduce_classes:
            weights[idx] *= 0.9
    for idx, name in enumerate(class_names):
        if name == "9":
            weights[idx] *= 10

    boost_classes = {"2", "5"}
    for idx, name in enumerate(class_names):
        if name in boost_classes:
            weights[idx] *= 1.5

    criterion = nn.CrossEntropyLoss(
        weight=weights.to(device),
        label_smoothing=args.label_smoothing,
    )
    optimizer = torch.optim.AdamW(
        model.parameters(), lr=args.lr, weight_decay=args.weight_decay
    )
    scheduler = torch.optim.lr_scheduler.CosineAnnealingLR(
        optimizer, T_max=args.epochs, eta_min=args.lr * 0.01
    )

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

        scheduler.step()
        current_lr = scheduler.get_last_lr()[0]

        train_acc = accuracy(model, train_loader, device)
        val_acc = accuracy(model, val_loader, device) if len(val_ds) else train_acc
        avg_loss = total_loss / len(train_ds)
        print(
            f"epoch {epoch:03d} lr={current_lr:.5f} loss={avg_loss:.4f} "
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
                    "arch": "BetterMathCNN",
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
    test_confusion = confusion_matrix(model, test_loader, device, len(class_names)) if len(test_ds) else []

    metadata = {
        "arch": "BetterMathCNN",
        "class_names": class_names,
        "excluded_classes": ["equals"],
        "train_count": len(train_ds),
        "val_count": len(val_ds),
        "test_count": len(test_ds),
        "local_train_count": len(local_train_samples),
        "external_train_count": len(external_samples),
        "sample_summary": {
            "train": summarize_samples(train_samples, class_names),
            "val": summarize_samples(val_samples, class_names),
            "test": summarize_samples(test_samples, class_names),
        },
        "ignored": {
            "local": ignored_local,
            "external": ignored_external,
        },
        "augmentation": {
            "enabled": bool(args.augment),
            "local_crop_ink": False,
            "external_crop_ink": True,
            "horizontal_white_line_erase": bool(args.augment),
            "horizontal_black_line_artifact": bool(args.augment),
            "shear_without_rotation": bool(args.augment),
        },
        "balanced_sampler": bool(args.balanced_sampler),
        "best_val_acc": best_val,
        "test_acc": test_acc,
        "test_confusion_matrix": test_confusion,
    }
    (run_dir / "metadata.json").write_text(json.dumps(metadata, indent=2), encoding="utf-8")

    print(f"best_val_acc={best_val:.3f} test_acc={test_acc:.3f}")
    print(f"classes={class_names}")
    print(f"local_train={len(local_train_samples)} external_train={len(external_samples)} val={len(val_ds)} test={len(test_ds)}")
    if ignored_local:
        print(f"ignored local labels/files: {ignored_local}")
    if ignored_external:
        print(f"ignored external labels/files: {ignored_external}")
    print(f"saved checkpoint: {best_path}")


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Train BetterMathCNN on PC-side OCR crops. The equals class is intentionally excluded."
    )
    parser.add_argument("--data-root", default=DEFAULT_DATA_ROOT)
    parser.add_argument(
        "--external-root",
        default=DEFAULT_EXTERNAL_ROOT,
        help="Optional external isolated-symbol dataset laid out in class-named folders.",
    )
    parser.add_argument(
        "--use-external",
        action="store_true",
        help="Add external-root samples to the training split only.",
    )
    parser.add_argument(
        "--external-limit-per-class",
        type=int,
        default=500,
        help="Maximum external training samples to keep per class. Use 0 for no cap.",
    )
    parser.add_argument("--run-dir", default=DEFAULT_RUN_DIR)
    parser.add_argument("--epochs", type=int, default=150)
    parser.add_argument("--batch-size", type=int, default=64)
    parser.add_argument("--lr", type=float, default=2e-3)
    parser.add_argument("--weight-decay", type=float, default=1e-4)
    parser.add_argument("--label-smoothing", type=float, default=0.05)
    parser.add_argument("--val-split", type=float, default=0.15)
    parser.add_argument("--test-split", type=float, default=0.15)
    parser.add_argument("--patience", type=int, default=25)
    parser.add_argument("--seed", type=int, default=42)
    parser.add_argument("--cpu", action="store_true")
    parser.add_argument(
        "--augment",
        action="store_true",
        help="Enable padding, skew, shift/scale, salt/pepper noise, ink-aware random "
             "erasing, horizontal white scan-line erasure, and black horizontal line "
             "artifacts during training.",
    )
    parser.add_argument(
        "--balanced-sampler",
        action=argparse.BooleanOptionalAction,
        default=True,
        help="Balance training draws across classes and local/external sources.",
    )
    parser.add_argument(
        "--summary-only",
        action="store_true",
        help="Print class/source counts and ignored labels, then exit without training.",
    )
    return parser


def main() -> None:
    args = build_parser().parse_args()
    train(args)


if __name__ == "__main__":
    main()
