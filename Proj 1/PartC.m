addpath('/Users/addi/Documents/MATLAB/APPM-2360/Proj 1');
ti = 0;
tf = 24;
npts = 240;
y0 = 50;
f = @(t,T) 0.25*(75 - T);

[t,w] = rk4(ti,tf,npts,y0,f);

%functions
g = @(t) 75 - 25*exp(-0.25*t);
u = g(t);
dydt= @(t,y) 0.25*(75 - 12*cos(pi*(t-5)/12)-y);

[i,y]= ode45 (dydt,0:24,50);

hold on
plot (t,w)
plot(i,y,"r")

