disp('Sekantmetoden'); 
x0=0;
x1=2;
f0=62*x0 - ((x0^2 + x0 + 0.04)/(3*x0 + 1))^7 - 19*x0*exp(-x0);
g0=1;
g1=1;
disp('x f korr konv') 
disp([x0 f0])
while abs(x1-x0)>5e-18
    f1=62*x1 - ((x1.^2 + x1 + 0.04)/(3*x1 + 1))^7 - 19*x1*exp(-x1);
    % y* dx/dy= t
    t=f1*(x1-x0)/(f1-f0); 
    
    k=t/(g1*g0);
   % disp([x1 f1 t k]) 
    x0=x1;
    f0=f1; 
    x1=x1-t; 
    g0=g1; 
    g1=t;
end; 
Sekrot=x1

x0=0;
x1=1;

f0=62*x0 - ((x0^2 + x0 + 0.04)/(3*x0 + 1))^7 - 19*x0*exp(-x0);
g0=1;
g1=1;
disp('x f korr konv') 
disp([x0 f0])
while abs(x1-x0)>5e-18
    f1=62*x1 - ((x1.^2 + x1 + 0.04)/(3*x1 + 1))^7 - 19*x1*exp(-x1);
    % y* dx/dy= t
    t=f1*(x1-x0)/(f1-f0); 
    
    k=t/(g1*g0);
   % disp([x1 f1 t k]) 
    x0=x1;
    f0=f1; 
    x1=x1-t; 
    g0=g1; 
    g1=t;
end; 
Sekrot2=x1
percentChange = (Sekrot2/Sekrot)



