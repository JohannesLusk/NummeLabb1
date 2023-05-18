
function [Atot] = TrapCalc(func,lower, upper, step)
Atot = 0;
for i = lower:step:upper
    Atot = Atot + (h/2)*(func(i) + func(i + 1));
end
end

