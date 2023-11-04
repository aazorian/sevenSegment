function segWrite(ardy,segPins,num)

% Sets the seven segment display pins high or low corresponding to a given number.
%
% Input: (arduino, pins, numbers)
% arduino = The name of the arduino to address
% pins = An array containing the segment pins in order A through G followed by the decimal pin
% numbers = An array containing the four numbers to be displayed
%
% Outputs: none, function will command the arduino pins

zero = [segPins(1,1:6)];
one = [segPins(1,2:3)];
two = [segPins(1,1:2),segPins(1,4:5),segPins(1,7)];
three = [segPins(1,1:4),segPins(1,7)];
four = [segPins(1,2:3),segPins(1,6:7)];
five = [segPins(1,1),segPins(1,3:4),segPins(1,6:7)];
six = [segPins(1,1),segPins(1,3:7)];
seven = [segPins(1,1:3)];
nine = [segPins(1,1:4),segPins(1,6:7)];
groupDigitalPinWrite(ardy,segPins,0)
switch num
    case 0
        groupDigitalPinWrite(ardy,zero,1)
    case 1
        groupDigitalPinWrite(ardy,one,1)
    case 2
        groupDigitalPinWrite(ardy,two,1)
    case 3
        groupDigitalPinWrite(ardy,three,1)
    case 4
        groupDigitalPinWrite(ardy,four,1)
    case 5
        groupDigitalPinWrite(ardy,five,1)
    case 6
        groupDigitalPinWrite(ardy,six,1)
    case 7
        groupDigitalPinWrite(ardy,seven,1)
    case 8
        groupDigitalPinWrite(ardy,segPins,1)
    case 9
        groupDigitalPinWrite(ardy,nine,1)
end
end
