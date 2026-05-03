# FPGA-Normalized OCR Training Setup

This folder is for retraining `tiny_math_cnn_match.sv` on the same 16x32 character crops that the FPGA pipeline produces.

## Dataset Layout

Store normalized crops here:

```text
ocr_training/data/normalized_chars/
  labeled/
    0/
    1/
    ...
    9/
    plus/
    minus/
    times/
    equals/
    open_paren/
    close_paren/
  manifest.csv
```

Images are saved as 16x32 PNG files with black ink on a white background. PBM captures from the testbench are accepted directly; `1` means black ink and `0` means white background.

## Collect Simulation PBMs

The testbench writes `norm_capture_*.pbm` files under `final_project.sim/sim_1/behav/xsim/`. Import them with labels inferred from the filename:

```powershell
python ocr_training/prepare_norm_dataset.py ingest `
  --input final_project.sim/sim_1/behav/xsim `
  --source sim
```

Example: `norm_capture_2_plus.pbm` is stored under `labeled/plus/`.

## Collect Hardware Crops

Crop the HDMI normalized strip into one character image per file, then import with an explicit label:

```powershell
python ocr_training/prepare_norm_dataset.py ingest `
  --input captures/hardware_plus `
  --label plus `
  --source hw
```

You can also put files in class-named folders and let the script infer labels:

```powershell
captures/hardware/
  plus/*.png
  5/*.png
  close_paren/*.png
```

Then run:

```powershell
python ocr_training/prepare_norm_dataset.py ingest --input captures/hardware --source hw
```

## Extract From HDMI Screenshot

If you can take a screenshot of the HDMI output, this script crops the normalized debug strip directly into labeled 16x32 files. The default coordinates match `hdmi_text_controller_v1_0.sv`:

```powershell
python ocr_training/extract_norm_strip.py `
  --image captures/hdmi_15_plus_67.png `
  --labels "15+67" `
  --source hw
```

This writes directly into:

```text
ocr_training/data/normalized_chars/labeled/
```

For a phone photo, first crop/straighten the photo so it contains the FPGA video frame, then pass that cropped image. If the crop is not the native 640x480 frame, set `--frame-width` and `--frame-height` to the cropped frame size.

## Capture Directly Over UART

The RTL can also stream the stored normalized 0/1 crops over USB-UART after each OCR result becomes valid. This is the cleanest hardware data path because it does not depend on photographing the monitor.

Install the PC dependency:

```powershell
pip install pyserial
```

Program the FPGA, open the board's serial port at `115200`, then run this before pressing the capture button:

```powershell
python ocr_training/capture_uart_norm.py --port COM5 --labels "15+67"
```

The script waits for one UART frame and saves each 16x32 normalized crop into the labeled dataset. If you omit `--labels`, it saves crops into `ocr_training/data/normalized_chars/inbox/` for later labeling.

To leave the receiver running across many captures:

```powershell
python ocr_training/capture_uart_norm.py --port COM5 --continuous
```

For labeled continuous capture, have the script ask for the expression before each FPGA capture:

```powershell
python ocr_training/capture_uart_norm.py --port COM5 --continuous --prompt-labels
```

For collecting one class at a time, use character-label mode. This applies the same label to every normalized crop received in every frame:

```powershell
python ocr_training/capture_uart_norm.py --port COM5 --continuous --labels "1" --char-label
```

That is useful if you point the camera at only one character class, press capture repeatedly, then switch to another label.

UART text format:

```text
BEGIN 05
C 00
0000000000000000
...
END
```

## Generate FPGA Font-ROM Starter Data

This creates synthetic 16x32 samples from `font_rom_16x32.sv` with small shifts, thickness changes, and speckle noise:

```powershell
python ocr_training/prepare_norm_dataset.py font-rom --count 200
```

This is useful before you have enough real hardware captures.

## Inspect Counts

```powershell
python ocr_training/prepare_norm_dataset.py summary
```

## Train and Export Vivado Weights

Dependencies:

```powershell
pip install torch pillow numpy
```

Train the same CNN architecture expected by `tiny_math_cnn_match.sv` and export Q8.8 `.mem` files:

```powershell
python ocr_training/train_norm_cnn.py --epochs 60 --export-dir vivado_q8_8
```

Training does not add salt/pepper noise or geometric jitter by default. It only converts images to the FPGA-compatible tensor convention: 16x32, black ink on white background, then normalized to `[-1,+1]`. To deliberately add small training-time augmentation later, pass `--augment`.

By default the trainer exports 18 output classes to match the current RTL `NUM_CLASSES=18`. If your local dataset only has the 16 hardware-visible classes, the remaining two outputs are left unused and map to `)` in `class_code.mem`.

The exported files overwrite the matcher inputs in `vivado_q8_8/`:

```text
class_code.mem
conv1_weight.mem
conv2_weight.mem
conv3_weight.mem
fc1_weight.mem
fc1_bias.mem
fc2_weight.mem
fc2_bias.mem
```
