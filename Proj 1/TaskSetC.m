addpath('/Users/addi/Documents/MATLAB/APPM-2360/Proj 1');


%DO NOT SUBMIT THIS CODE


ti = 0;
tf = 24;
npts = 240;
y0 = 50;

% Solve with rk4
[t_rk, w_rk] = rk4(ti,tf,npts,y0,@f);

% Solve with ode45
[t_ode, y_ode] = ode45(@h,[0 24],y0);

% Exact solution
t_exact = linspace(0,24,241);
y_exact = g(t_exact);

% Plot
hold on
plot(t_rk,w_rk,'bo-','DisplayName','RK4')
plot(t_ode,y_ode,'r-','DisplayName','ode45')
plot(t_exact,y_exact,'k--','DisplayName','Exact')
xlabel('t')
ylabel('T(t)')
legend
grid on
hold off

% ---- ODEs ----
function dTdt = f(~,T)
    dTdt = 0.25*(75 - T);
end

function T = g(t)
    T = 75 - 25*exp(-0.25*t);
end

function dydt = h(t,y) 
    dydt = 0.25*(75 - 12*cos(pi*(t-5)/12) - y);
end
