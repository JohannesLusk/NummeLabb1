disp('Newton-Raphsons metod') 
x=6;
t=1;
format short e
disp(' x f(x) fprim(x) korr kvad linj') 
while abs(t)>5e-18
    f= 62*x - ((x^2 + x + 0.04)/(3*x + 1))^7 - 19*x*exp(-x); 
    fp= 62 + 21*(x^2+x+0.04)^7/(3*x+1)^8 - 7*(2*x+1)*(x^2+x+0.04)^6/(3*x+1)^7 - 19*exp(-x) - 19*x*exp(-x);
    g=t;
    t=f/fp;
    kvad=t/g^2; 
    linj=t/g;
    disp([x f fp t kvad linj]); 
    x=x-t;
end 
rot=x

