function groupDigitalPinWrite(ardy,pins,bool)

% Sets a group of digital arduino pins high or low.
% 
% Inputs: (arduino, pins, boolean)
% arduino = The name of the arduino to address
% pins = The group of pins to adress
% boolean = The boolean value to set the pins to, 0 or 1
% 
% Outputs: none, function will command the arduino pins

for pinNum = 1:length(pins)
    writeDigitalPin(ardy,pins(1,pinNum),bool);
end
end
