% Script for testing the functions for the multiplexing seven segment display.

clear; clc;
segUno=arduino();
ledPins=["D2","D3","D4","D5","D6","D7","D8","D9"];
gndPins=["D10","D11","D12","D13"];
numbers=[0,1,2,3];
decimals=[1,0,0,0];
sevenSeg(segUno,ledPins,gndPins,numbers,decimals);