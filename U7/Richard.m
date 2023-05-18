function [value, del] = Richard(lastValue, func, lower, higher, h)

    value = TrapCalc(func, lower, higher, h);
    del = (value - lastValue)
    if abs(del)> 1e-10
        newT = value + (del / 3);
        [value, del]  = Richard(value, func, lower, higher, h/2);
    end
    
end