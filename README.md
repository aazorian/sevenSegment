# sevenSegment
Supporting MATLAB code for running a four digit, seven segment display using an arduino Uno.
This was done as project for an independent study course. The intent of the project was to see if a seven segment, multiplexing display could be successfully run using a MATLAB commanded arduino.
This display would run without any backpack chip and need for supporting libraries. Instead, the pins of the display would connect directy to the arduino.

The sevSegExecute is a simple script for running the function, the following details the exact setup used.

| Segment Pin | Funtion | Arduino Pin |
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
