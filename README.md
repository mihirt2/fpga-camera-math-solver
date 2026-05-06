# FPGA Math Equation Solver

Real-time FPGA OCR pipeline for handwritten math expressions. The FPGA captures an OV7670 camera frame, binarizes and segments characters, normalizes each crop to 16x32, sends the normalized crops to a PC over UART, receives character classifications back over UART, parses the expression, solves it, and renders the camera feed plus result over HDMI.

The current hardware path uses the external PC classifier, not the CNN RTL classifier:

```systemverilog
.USE_EXTERNAL_CLASSIFIER(1'b1),
.USE_CNN_MATCH(1'b0)
```

That keeps the FPGA LUT usage lower and makes classifier retraining/debugging much faster.

## Repository Layout

```text
final_project.xpr                         Vivado 2022.2 project
final_project.srcs/constrs_1/imports/     Local board/camera/HDMI/UART constraints
final_project.srcs/sources_1/new/         SystemVerilog source and testbenches
final_project.srcs/sources_1/ip/          Checked-in Xilinx IP .xci files
ocr_training/                             Python OCR capture, training, and PC classifier tools
vivado_q8_8/                              Exported CNN .mem files for the optional RTL CNN path
requirements.txt                          Python dependencies
```

Generated Vivado output folders such as `.Xil/`, `final_project.runs/`, `final_project.gen/`, `final_project.sim/`, and `xsim.dir/` are intentionally ignored.

## Hardware Assumptions

- Vivado 2022.2.
- Xilinx 7-series board targeting `xc7s50`.
- OV7670 camera wired to the pins in `final_project.srcs/constrs_1/imports/mb_usb_hdmi_top.xdc`.
- HDMI output connected to a 640x480 display path.
- USB-UART at 115200 baud.
- UART TX from FPGA is constrained to `A16`.
- UART RX into FPGA is constrained to `B16`.

## Fresh Clone Setup

1. Clone the repo.
2. Open `final_project.xpr` in Vivado 2022.2.
3. If Vivado asks to regenerate IP outputs, allow it.
4. Confirm the top module is `top_level`.
5. Generate bitstream normally from Vivado, or use the commands below.

The project should not require files from `C:/Users/...` or from a local `ip_repo` submodule. The XDC has been copied into the project, and the old local submodule reference was removed.

## Build In Vivado

From the Vivado Tcl console:

```tcl
reset_run synth_1
launch_runs synth_1 -jobs 4
wait_on_run synth_1

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
```

To watch synthesis from PowerShell:

```powershell
Get-Content .\final_project.runs\synth_1\runme.log -Wait -Tail 40
```

To write a bitstream from an already-open implemented design:

```tcl
open_run impl_1
write_bitstream -force top_level.bit
```

If `open_run impl_1` says the run has not been launched, implementation has not completed yet.

## PC Classifier Runtime

Install Python dependencies:

```powershell
python -m pip install -r requirements.txt
```

Start the PC classifier loop before pressing the FPGA capture button:

```powershell
python .\ocr_training\uart_pc_classifier_loop.py --port COM6
```

Use the COM port assigned to your USB-UART device. To list ports:

```powershell
python .\ocr_training\uart_pc_classifier_loop.py --list-ports
```

The runtime loop:

1. Waits for the FPGA to send a `BEGIN nn` UART crop frame.
2. Runs the normalized 16x32 crops through the PyTorch classifier.
3. Sends a response back to the FPGA in this format:

```text
R 04 0A 05
```

That example means `4+5`.

The default model path is:

```text
ocr_training/models/best_model.pt
```

The default checkpoint is tracked so the PC classifier can run from a fresh clone. Training runs under `ocr_training/runs/` are ignored.

## Manual UART Response

For quick UART RX testing, you can manually send character codes from PowerShell:

```powershell
$port = New-Object System.IO.Ports.SerialPort "COM6",115200,None,8,one
$port.Open()
$port.Write("R 04 0A 05`n")
$port.Close()
```

The FPGA expects the response after it sends the normalized crops for the current capture. The response count must exactly match the number of detected characters.

## Character Codes

Raw hardware/PC character codes:

```text
00-09  digits 0-9
0A     plus
0B     x
0C     multiply
0D     minus
0E     open parenthesis
0F     close parenthesis
10     caret / exponent
1F     invalid character
```

The solver maps raw `x` and minus internally before parsing. Invalid characters are displayed as `?` in the equation and make the solver output `INVALID`.

## HDMI Output

The HDMI output shows:

- Title: `FPGA Math Equation Solver`.
- Camera preview centered on screen.
- OCR/result text.
- Optional normalized crop preview controlled by switches.

For a variable equation, the current result format is:

```text
X+2=0 x=-2.00000000
```

Constant expressions display as:

```text
4+5=9.00000000
```

Invalid expressions keep the detected equation visible on the left and show `INVALID` on the right.

## Switch And LED Debug

`sw[15:14]` selects the LED debug view:

```text
00  stage_dbg
01  dbg_num_chars
10  selected character code and match/debug distance
11  cam_init_done, cam_frame_done, busy, result_valid, uart_dump_busy, normalized-any-pixel, threshold
```

For `sw[15:14] = 10`, select the character index with `sw[13:11]`.

Useful debug markers:

```text
3FD  character came from external UART classifier
3FB  classifier timed out / fallback reject
1F   invalid character
```

## Capturing Normalized Crops

Save hardware-normalized 16x32 crops over UART:

```powershell
python .\ocr_training\capture_uart_norm.py --port COM6 --continuous
```

In continuous mode without labels, images are written to:

```text
ocr_training/data/normalized_chars/test/
```

For one label at a time:

```powershell
python .\ocr_training\capture_uart_norm.py --port COM6 --continuous --labels "5" --char-label
```

For prompted labels:

```powershell
python .\ocr_training\capture_uart_norm.py --port COM6 --continuous --prompt-labels
```

Training data under `ocr_training/data/` is ignored so local datasets do not get pushed accidentally.

## Training The PC Classifier

Inspect dataset counts:

```powershell
python .\ocr_training\prepare_norm_dataset.py summary
```

Train:

```powershell
python .\ocr_training\train_norm_cnn.py --epochs 60
```

Train and export optional RTL CNN `.mem` files:

```powershell
python .\ocr_training\train_norm_cnn.py --epochs 60 --export-dir vivado_q8_8
```

The exported `.mem` files are tracked because `tiny_math_cnn_match.sv` uses them if the optional RTL CNN path is re-enabled.

To replace the default PC classifier checkpoint after training:

```powershell
Copy-Item .\ocr_training\runs\norm_cnn_active_aug\best_model.pt .\ocr_training\models\best_model.pt -Force
```

## Useful Simulations

Set the simulation top in Vivado, then run behavioral simulation.

```text
tb_external_class_uart_rx          UART response parser
tb_solver                          parser and solver behavior
tb_tiny_math_cnn_match_dataset     optional RTL CNN dataset smoke test
tb_ocr_minus_heuristic             minus classification heuristic
tb_ocr_parser_top                  OCR parser top integration
```

The currently selected simulation top in the project is `tb_external_class_uart_rx`.

## Git Hygiene

Before committing:

```powershell
git status --short
git diff --check
```

Files that should normally be committed:

- `final_project.xpr`
- `final_project.srcs/**/*.sv`
- `final_project.srcs/**/*.xdc`
- `final_project.srcs/**/*.xci`
- `ocr_training/*.py`
- `ocr_training/models/*.pt`
- `ocr_training/README.md`
- `vivado_q8_8/*.mem`
- `README.md`
- `requirements.txt`

Files that should stay local/ignored:

- `.Xil/`
- `final_project.cache/`
- `final_project.gen/`
- `final_project.hw/`
- `final_project.ip_user_files/`
- `final_project.runs/`
- `final_project.sim/`
- `final_project.tmp/`
- `xsim.dir/`
- `ocr_training/data/`
- `ocr_training/runs/`
- Vivado logs/journals/checkpoints/bitstreams
