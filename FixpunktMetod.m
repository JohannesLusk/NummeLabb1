%clear variables
clc
%finding roots of this function:
%f = 62*x - ((x^2 + x + 0.04)/(3*x + 1))^7 - 19*x*exp(-x);

%Initial guess
x_n = input('enter initial guess: ');
error_tolerance = 1e-18;
% Iteration #
n=0;
% old guess 
old = x_n;
%set formatting
format short e
%initialize
x_n_1 = (62*x_n-(62*x_n - ((x_n^2 + x_n + 0.04)/(3*x_n + 1))^7 - 19*x_n*exp(-x_n)))/62;

% diffrence between old and new guess
change = abs(old - x_n_1);

% when diffrence is very small, stop.
while change > error_tolerance && n < 1002
    % new guess = g(old_guess)
    x_n_1 = (62*x_n-(62*x_n - ((x_n^2 + x_n + 0.04)/(3*x_n + 1))^7 - 19*x_n*exp(-x_n)))/62;
    %display values
    %disp ([n x_n_1 x_n err_x_1/err_x])
    oldchange = old - x_n;
    old = x_n;
    change = abs(old - x_n_1);
    % new guess = old guess -> repeat
    x_n = x_n_1;
    n=n+1
    
    linj = change/oldchange
end 
root = x_n_1

%största roten hittas inte 
%linjär konvergens då |g'| < 1
%snabb konvergens då |g'| << 1
% konvergerar endast då 