function [zeroPos] = NewtonMethod(guess)
zeroPos = guess;
while abs(Function(zeroPos)) > 10^-8
     tillskott = (Function(zeroPos))/(Derivative(zeroPos));
     zeroPos = guess - tillskott;
end 
end
%find the change







function [val] = Function(x)
val = 62*x - ((x.^2 + x + 0.04)/((3*x + 1)).^7) - 19*x*exp(-x);
end 

function [val] = Derivative(x)
    val =  (21*(x.^2 + x + 0.04).^7)/((3*x + 1).^8) - (7*(2*x + 1)*(x.^2 + x + 0.04).^6)/(3*x + 1).^7 - 19*exp(-x) + 19*exp(-x)*x + 62;
end




