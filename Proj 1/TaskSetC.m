%statment of inital conditions and rk4 paramaters
kappa = 0.25;
h = 0.1;
t0 = 0; tf = 24;
t = t0:h:tf;
n = length(t);
T = zeros(1,n);
T(1) = 65;
M0 = 35;
M = @(tt) M0 - 12*cos(pi*(tt-5)/12);

%rk4 function
for i = 1:n-1
   ti = t(i);
   yi = T(i);
   f = @(tt, y) kappa*(M(tt)-y);
   k1 = f(ti, yi);
   k2 = f(ti + h/2, yi + h*k1/2);
   k3 = f(ti + h/2, yi + h*k2/2);
   k4 = f(ti + h, yi + h*k3);
   T(i+1) = yi + (h/6)*(k1 + 2*k2 + 2*k3 + k4);
end

%plotting
figure;
plot(t, T, 'b-', 'LineWidth', 1.5); hold on
plot(t, M(t), 'r--', 'LineWidth', 1.2)
xlabel('time (hours)')
ylabel('Temperature (^\circF)')
title('M(t) and T(t), M0 = 35, T(0)=65')
legend('T(t) - inside','M(t) - outside')
grid on

%finding maxes and mins
[Tmin, idxMin] = min(T);
[Tmax, idxMax] = max(T);
tMin = t(idxMin);
tMax = t(idxMax);
fprintf('Minimum T(t): %.2f °F at t = %.2f hours\n', Tmin, tMin);
fprintf('Maximum T(t): %.2f °F at t = %.2f hours\n', Tmax, tMax);
plot(tMin, Tmin, 'bo', 'MarkerFaceColor', 'b', 'MarkerSize', 8);
plot(tMax, Tmax, 'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 8);
