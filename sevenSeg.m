function sevenSeg(ardy,segPins,gnds,nums,decs)

% Displays numbers on a four character, seven segment, multiplexing display.
%
% Inputs: (arduino, pins, grounds, numbers, decimals)
% arduino = The name of the arduino to address
% pins = An array containing the segment pins in order A through G followed by the decimal pin
% grounds = An array containing the segment grounds in order 1 through 4
% numbers = An array containing the four numbers to be displayed
% decimals = An array containing the boolean values for enabling the decimals on number 1 through 4
%
% Outputs: none, function will command seven segment display

group1 = [gnds(1,2),gnds(1,3),gnds(1,4)];
group2 = [gnds(1,1),gnds(1,3),gnds(1,4)];
group3 = [gnds(1,1),gnds(1,2),gnds(1,4)];
group4 = [gnds(1,1),gnds(1,2),gnds(1,3)];
while 1
    writeDigitalPin(ardy,gnds(1,4),0);
    groupDigitalPinWrite(ardy,group1,1);
    segWrite(ardy,segPins,nums(1,1));
    writeDigitalPin(ardy,segPins(1,8),decs(1,1))
    writeDigitalPin(ardy,gnds(1,1),0);
    groupDigitalPinWrite(ardy,group2,1);
    segWrite(ardy,segPins,nums(1,2));
    writeDigitalPin(ardy,segPins(1,8),decs(1,2))
    writeDigitalPin(ardy,gnds(1,2),0);
    groupDigitalPinWrite(ardy,group3,1);
    segWrite(ardy,segPins,nums(1,3));
    writeDigitalPin(ardy,segPins(1,8),decs(1,3))
    writeDigitalPin(ardy,gnds(1,3),0);
    groupDigitalPinWrite(ardy,group4,1);
    segWrite(ardy,segPins,nums(1,4));
    writeDigitalPin(ardy,segPins(1,8),decs(1,4))
end
end