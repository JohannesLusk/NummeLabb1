format default;
func = @(x) (1-exp(-(x./3).^3))./(5.*x.^3);

a =1e-4 ; b=1e+5 ; n=100000 ;
iter = 0;
old = 0;
while iter < 1
h= (b-a)/n;
x=a:h:b;
y = func(x);
sum = 0;
for z = 1:length(y)-1
    sum = sum + h*((y(z+1)-y(z))+y(z));
end 
disp([h,trap,delta,sum])
old = trap;

n = n*2;
iter =iter+1;

end 

lol = trapz(y,100);



plot(x,y)


