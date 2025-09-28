addpath('/Users/addi/Documents/MATLAB/APPM-2360/Proj 1');


ti = 0;
tf = 24;
npts = 240;
y0 = 50;

%functions
f = @(t,T) 0.25*(75 - T);

%rkr call
[t,w] = rk4(ti,tf,npts,y0,f);



g = @(t) 75 - 25*exp(-0.25*t);

u = g(t);

% plot solved vs rk 
hold on;
plot (t,w, "r o")
plot (t,g(t), "b-")

%error plot
plot (t,(g(t)-w),"k--")
hold off


