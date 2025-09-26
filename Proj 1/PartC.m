addpath('/Users/addi/Documents/MATLAB/APPM-2360/Proj 1');
ti = 0;
tf = 24;
npts = 240;
y0 = 50;

function T = f(~,T)
 0.25*(75 - T);
end

[t,w] = rk4(ti,tf,npts,y0,f);

%functions

function T = g(t)
 75 - 25*exp(-0.25*t);
end


function dydt= h(t,y) 
0.25*(75 - 12*cos(pi*(t-5)/12)-y);
end

[i,y]= ode45 (dydt,0:24,50);

hold on
plot (t,w)
plot(i,y,"r")

