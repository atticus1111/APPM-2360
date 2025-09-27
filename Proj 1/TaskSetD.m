addpath('/Users/addi/Documents/MATLAB/APPM-2360/Proj 1');

function T= H(t)
 T = 7 *sech(3*(t-10)/4);
end

t =0:24;
%y = H(t);          

plot(t,H(t),'b-o')
xlabel('t')
ylabel('T')
grid on



ti = 0;
tf = 24;
npts = 240;
y0 = 50;


%functions
function f= dTdt(t)

f=7*(sech(3*(t - 10)/4));
end

%rkr call
[t,w] = rk4(ti,tf,npts,y0,dTdt);

plot(t,w)

