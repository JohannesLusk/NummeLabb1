% computes integral and performs richardson extrapolation on said 
%integral.


function [vol,step,etrunk] = RichardTrapz(func, startx, endx, step,AccErr)
A1 = trap(func, startx,endx,step/4);
A2 = trap(func, startx,endx,step/2);
A4 = trap(func, startx,endx,step);
etrunk = abs((A1-A2)/3 - (A2-A4)/3);

while etrunk>AccErr %&& (3<(A4-A2)/(A2-A1) && (A4-A2)/(A2-A1)<5)
    step = step/2
    A1 = trap(func, startx,endx,step/4);
    A2 = trap(func, startx,endx,step/2);
    A4 = trap(func, startx,endx,step);
    etrunk = abs((A1-A2)/3 - (A2-A4)/3)
    A4 = A2;
    A2= A1;
end
vol = A1+(A1-A2)/3;
%z0 = (A4-A2)
%z1 = (A2-A1)
end 


% richardson extrapolation

% val(step) = val(step)-val(2*step)/3
% etrunk = abs(val(step)-val(2*step))
%
% etrunk ok if (val(4*step)-val(2*step))/((val(2*step)- val(step))


function area = trap(func, startx, endx, step)
x = startx:step:endx;
area = 0;
%ai ((y1 + y2)/2)*h

for i = 1:length(x)-1
    area = area + step*(func(x(i))+func(x(i+1)))/2;
end 
end 