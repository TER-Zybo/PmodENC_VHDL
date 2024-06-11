# VHDL Project: Counter Control with PMODENC Rotary Encoder and LED Display

 This project demonstrates how to build a VHDL-based design using Xilinx Vivado to control a counter with a PMODENC rotary encoder. The counter's value is displayed on 4 LEDs on the Zybo Z7-20 FPGA board.

## Prerequisites
- Xilinx Vivado Design Suite
- Zybo Z7-20 FPGA board
- PMODENC rotary encoder

## How to Use

### Opening the Project in Vivado

1. **Launch Vivado**:
   - Open Xilinx Vivado Design Suite on your computer.

2. **Open the Existing Project**:
   - Go to `File > Open Project`.
   - Navigate to the `Vivado_Project` directory and select the project file to open.

### Building the Project

1. **Generate the Bitstream**:
   - click on `Generate Bitstream`.

### Programming the FPGA

1. **Connect the FPGA Board**:
   - Connect the Zybo Z7-20 FPGA board to your computer using a USB cable.

2. **Program the Device**:
   - In Vivado, go to `Open Hardware Manager` and click on `Open Target > Auto Connect`.
   - Click on `Program Device` and select the generated bitstream file to program the FPGA.

### Running the Application

1. **Connect the PMODENC**:
   - Attach the PMODENC rotary encoder to the appropriate PMOD connector on the Zybo Z7-20 FPGA board.

2. **Observe LED Display**:
   - Rotate the PMODENC rotary encoder.
   - The counter value will be displayed on the 4 LEDs on the Zybo Z7-20 board.

### References
 This project is inspired by the [Nexys 3 VHDL Example - ISE 14.2](https://digilent.com/reference/_media/reference/pmod/pmodenc/pmodenc_ise_demo_14-2.zip) guide from [Digilent](https://digilent.com/reference/pmod/pmodenc/start).
