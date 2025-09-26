addpath('/Users/addi/Documents/MATLAB/APPM-2360/Proj 1');
ti = 0;
tf = 24;
npts = 240;
y0 = 50;

%functions
f = @(t,T) 0.25*(75 - T);
g = @(t) 75 - 25*exp(-0.25*t);