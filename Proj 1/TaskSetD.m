addpath('/Users/addi/Documents/MATLAB/APPM-2360/Proj 1');



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


plot(t,T(t))

[M,t_m] = max(T(t))

function T= H(t)
 T = 7 *sech(3*(t-10)/4);
end

%functions
function T2 = T(t)

T2 = (28/3)*atan(sinh((3/4)*(t-10))) + 65 - (28/3)*atan(sinh(-(15/2)));

end