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

if height(ardy) ~= 1
    error("Arduino input must only contain arduino name")
elseif length(ardy) ~= 1
    error("Arduino input must only contain arduino name")

elseif isstring(segPins) ~= 1
    error("Segment pin array must contain pin names")
elseif height(segPins) ~= 1
    error("Segment pin array must be one dimensional")
elseif length(segPins) ~= 8
    error("Segment pin array must contain seven pins")

elseif isstring(gnds) ~= 1
    error("Ground pin array must contain ground pin names")
elseif height(gnds) ~= 1
    error("Ground pin array must be one dimensional")
elseif length(gnds) ~= 4
    error("Gound pin array must contain four pins")

elseif height(nums) ~= 1
    error("Numbers array must be one dimensional")
elseif length(nums) ~= 4
    error("Numbers array must only contain four values")

elseif height(decs) ~= 1
    error("Decimals array must be one dimensional")
elseif length(decs) ~= 4
    error("Decimals array must only contain four values")
end

for dig = 1:4
    if nums(1,dig) < 0 || nums(1,dig) > 9
        error("Display numbers must be single digit")
    elseif rem(nums(1,dig),1) ~= 0
        error("Numbers to display must be whole numbers")
    elseif decs(1,dig) < 0 || decs(1,dig) > 1
        error("Decimals input must contain boolean values of zero or one")
    elseif rem(decs(1,dig),1) ~= 0
        error("Decimals input must contain boolean values of zero or one")
    end
end


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
