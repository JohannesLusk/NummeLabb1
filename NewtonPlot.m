
hold on

x=0;
t=1;
format long e
%disp(' x f(x) fprim(x) korr kvad linj') 
while abs(t)>5e-18
    f= 62*x - ((x^2 + x + 0.04)/(3*x + 1))^7 - 19*x*exp(-x); 
    fp= 62 + 21*(x^2+x+0.04)^7/(3*x+1)^8 - 7*(2*x+1)*(x^2+x+0.04)^6/(3*x+1)^7 - 19*1.03*exp(-x) - 19*1.03*x*exp(-x);
    g=t;
    t=f/fp;
    kvad=t/g^2; 
    linj=t/g; 
    disp([x f fp t kvad linj]); 
    x=x-t;
end 
rot=x;

plot(rot,0,'bo')
text(rot,0,'Newton Rot1','VerticalAlignment','bottom','HorizontalAlignment','left')
plotx = linspace(0,7,10000);

y3 = 62.*plotx -( (plotx.^2+plotx+0.04) ./ (3.*plotx+1) ).^7 -19.*plotx.*exp(-plotx);
y2 = plotx.*0;
plot(plotx,y3)
plot(plotx,y2)


x=6;
t=1;
format long e
%disp(' x f(x) fprim(x) korr kvad linj') 
while abs(t)>5e-8
    f= 62*x - ((x^2 + x + 0.04)/(3*x + 1))^7 - 19*x*exp(-x); 
    fp= 62 + 21*(x^2+x+0.04)^7/(3*x+1)^8 - 7*(2*x+1)*(x^2+x+0.04)^6/(3*x+1)^7 - 19*1.03*exp(-x) - 19*1.03*x*exp(-x);
    g=t;
    t=f/fp;
    kvad=t/g^2; 
    linj=t/g; 
    disp([x f fp t kvad linj]); 
    x=x-t;
end 
rot=x;
plot(rot,0,'bo')
text(rot,0,'Newton Rot2','VerticalAlignment','bottom','HorizontalAlignment','left')

%sekantmetoden

x0=10;
x1=12;
f0=62*x0 - ((x0^2 + x0 + 0.04)/(3*x0 + 1))^7 - 19*x0*exp(-x0);
g0=1;
g1=1;
disp('x f korr konv') 
disp([x0 f0])
while abs(x1-x0)>5e-8
    f1=62*x1 - ((x1.^2 + x1 + 0.04)/(3*x1 + 1))^7 - 19*x1*exp(-x1);
    % y* dx/dy= t
    t=f1*(x1-x0)/(f1-f0); 
    
    k=t/(g1*g0);
    disp([x1 f1 t k]) 
    x0=x1;
    f0=f1; 
    x1=x1-t; 
    g0=g1; 
    g1=t;
end
Sekrot=x1;
plot(Sekrot,0,'ro')
text(Sekrot,0,'Sekant Rot2', 'VerticalAlignment','top','HorizontalAlignment','right')

x0=0;
x1=1;
f0=62*x0 - ((x0^2 + x0 + 0.04)/(3*x0 + 1))^7 - 19*x0*exp(-x0);
g0=1;
g1=1;
disp('x f korr konv') 
disp([x0 f0])
while abs(x1-x0)>5e-8
    f1=62*x1 - ((x1.^2 + x1 + 0.04)/(3*x1 + 1))^7 - 19*x1*exp(-x1);
    % y* dx/dy= t
    t=f1*(x1-x0)/(f1-f0); 
    
    k=t/(g1*g0);
    disp([x1 f1 t k]) 
    x0=x1;
    f0=f1; 
    x1=x1-t; 
    g0=g1; 
    g1=t;
end
Sekrot=x1;
plot(Sekrot,0,'ro')
text(Sekrot,0,'Sekant Rot1', 'VerticalAlignment','top','HorizontalAlignment','right')

