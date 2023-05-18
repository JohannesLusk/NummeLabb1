x = linspace(0, 1e-4, 1000);
taylorPoly = @(x) 1/135 - (x.^3)./7290;
toIntegrate = @(x) (1 - exp(-(x./3).^3))./(5.*x.^3);
FucntionPlotVect = taylorPoly(x);
%plot(x,FucntionPlotVect)

int1 = RichardTrapz(taylorPoly,0,1e-4,1e-6,2e-11)
int2 = RichardTrapz(toIntegrate,1e-4,1e1,1,2e-11)
int3 = RichardTrapz(toIntegrate,1e1,1e5,10,2e-11)
intres = int1 + int2 +int3
etrunkTotal = 3*2e-11+1e-12
%Cut at 1e5.   for ECut < 1e-12.
format long e


%a= TrapCalc(t,0,0.0001,0.00000000002);
%[taylorSvar, talylorfel] = Richard(a, t, 0, 1e-4, 0.00000000001)




% d = TrapCalc(f,1e-4,1,0.008);
% e = TrapCalc(f,1,1e+5,0.00016);
% 
% [svar, fel2]= Richard(d, f, 1e-4, 1, 0.004)
% [svar2, fel3] = Richard(e, f, 1, 1e+5, 0.00008)
% 
% totalfel = talylorfel + fel2 + fel3 + 10e-10
% totalsvar = svar +svar2 + taylorSvar 