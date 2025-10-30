
%rk4 function was loaded into a sepearate file and called from this file
addpath('/Users/addi/Documents/MATLAB/APPM-2360/Proj 1');

%rk4 paramaters
ti = 0;
tf = 24;
npts = 240;
y0 = 50;

%functions: f is differential equation, g is exact solution
f = @(t,T) 0.25*(75 - T);
g = @(t) 75 - 25*exp(-0.25*t);

%rkr call
[t,w] = rk4(ti,tf,npts,y0,f);


% plot solved vs rk 
hold on;
%plot (t,w, "r o", DisplayName= 'RK aproximation')
%plot (t,g(t), "b-", DisplayName= 'Exact value')
%xlabel('Time (hours)')
%ylabel('Temp (ºF)')
%grid on
legend


%error plot: commented out parts sepearatley to obtain diffrent graphs
plot (t,(g(t)-w),"k--", DisplayName='Error')
xlabel('Number of iterations')
ylabel('Error')
hold off
legend

