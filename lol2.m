clear
clf
days = [1; 32; 60; 91; 121; 152; 182; 213; 244; 274; 305; 335; 365];
time = [375; 486; 632; 795; 955; 1083; 1104; 998; 844; 684; 526; 396; 374];

w = (2*pi)/365;

A = [sin(days.*w), cos(days.*w), days.^0];
c=A\time;

x = (1:365)';
plotA = [sin(x.*w) cos(x.*w) x.^0];
plot(x, plotA*c)
hold on
plot(days, time, "*")