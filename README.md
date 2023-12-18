# sevenSegment
Supporting MATLAB code for running a four digit, seven segment display using an Arduino Uno. This was done as project for an independent study course. The intent of the project was to see if a seven segment, multiplexing display could be successfully run using a MATLAB commanded Arduino. This display would run without any backpack chip and need for supporting libraries. Instead, the pins of the display would connect directy to the Arduino.

Unfortunately, the project was not entirely successful. The display indexes through the characters as intended, but at too slow a speed to achieve the illusion of a continuous display. This downside was not overcome by the conclusion of the project. An outline of the project and this issue can be found in the main folder titled "final_deliverable". Regardless, the project was still a curious and educational exercise in the MATLAB-Arduino functionality and its uses.

The sevSegExecute is a simple script for running the function, the following details the exact setup used and will allow the script to be run as is. The exact pins used may be changed as long as they are still organized in the inputs as per the description of the sevenSeg function.

Required Components:
- Arduino Uno or Uno clone
- XLITX model 5641AS 7-Segment Display or similar
- Male-male jumper wires, x16
- Resistors of your choice, x4

Pin Connections:
| Display Pin | Function | Arduino Pin |
|---|---|---|
| 1 | Segment E | 6 |
| 2 | Segment D | 5 |
| 3 | Decimal Point | 9 |
| 4 | Segment C | 4 |
| 5 | Segment G | 8 |
| 6 | Digit 4 | 13 |
| 7 | Segment B | 3 |
| 8 | Digit 3 | 12 |
| 9 | Digit 2 | 11 |
| 10 | Segment F | 7 |
| 11 | Segment A | 2 |
| 12 | Digit 1 | 10 |

Each of the ground connections should be interrupted by a resistor.

Pictoral wiring diagram:

<img src="https://github.com/aazorian/sevenSegment/assets/105015043/67ac387a-ca32-47fd-a3f8-f43f13164852" width="800">

Setup photo:

<img src="https://github.com/aazorian/sevenSegment/assets/105015043/a1b9b1b0-a896-46a9-8ffa-4faceeb79dee" width="500">

NOTE: The funtion will run indefinitely, the display is stopped manualy using the MATLAB stop button.
