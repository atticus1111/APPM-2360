addpath('/Users/addi/Documents/MATLAB/APPM-2360/Proj 1');

ti = 0;
tf = 25;
npts = 250;
y0 = 50;

%functions
f = @(t,T) 0.25*(75 - T);

g = @(t) 75 - 25*exp(-0.25*t);

u = g(t);

%rkr call
[t,w] = rk4(ti,tf,npts,y0,f);

% dT/dt = 0.25(75 − T ), T (0) = 50
% -ln|75-T| = 0.25t +C
% 75 - T = ce^-0.25t
% T= 75 - Ce^-0.25t 
% 25 = C


%on the interval [0, 24] using 240 points (stepsize h = 0.1). 
% Note that this is the same initial value problem as in Task Set A part 4(e).

hold on;
plot (t,w, "r o")
plot (t,g(t), "b-")

plot (t,(u-w),"k--")
hold off



