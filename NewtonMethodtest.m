
function [zeroPos] = NewtonMethodtest(guess)
zeroPos = guess;
while abs(Func(zeroPos)) > 10^-8

    % find correction
    Func(zeroPos)
    ddx2(zeroPos)
    tillskott = Func(zeroPos)/ddx2(zeroPos)
    zeroPos = zeroPos - tillskott
end
end 

%function lmao = Func2(x)
%lmao = -62*x.^2 -2;
%end

function lmao = ddx2(x)
lmao = (19*x*exp(-x) - 19*exp(-x) - (2*x + 1)/(3*x + 1)^7 + (21*(x^2 + x + 1/25))/(3*x + 1)^8 + 62);
end

function lmao = Func(x)
lmao = (62*x - ((x.^2 + x + 0.04)/((3*x + 1))^7) - 19*x*exp(-x));
end 

%function lmao = ddx(x)
%lmao = ((21*(x^2 + x + 0.04)^7)/((3*x + 1)^8) - (7*(2*x + 1)*(x^2 + x + 0.04)^6)/(3*x + 1)^7 - 19*exp(-x) + 19*exp(-x)*x + 62);
%end 