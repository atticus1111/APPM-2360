addpath('/Users/addi/Documents/MATLAB/APPM-2360/Proj 1');

t =0:24;
y = H(t);          

%first plot
%plot(t,T(t))

%second plot
plot(t,H(t),'b-o')

xlabel('Time (hours)')
ylabel('Temp (ºF)')
grid on


%finding max
[M,t_m] = max(T(t))


%functions
function T= H(t)
 T = 7 *sech(3*(t-10)/4);
end

function T2 = T(t)

T2 = (28/3)*atan(sinh((3/4)*(t-10))) + 65 - (28/3)*atan(sinh(-(15/2)));

end