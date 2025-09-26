
%(this is the one they want us to graph for later parts too btw) 
%Graph code (I don’t wanna mess anything up by trying to put it into the GitHub, I don’t understand it well enough -Alex)
%Question 4E:

M0 = 75;
kappa = 0.25;
t0 = 0;
t = linspace(0,24,241); 

T0_a = 50;
T0_b = 80;

T_a = M0 + (T0_a - M0) * exp(-kappa*(t - t0));
T_b = M0 + (T0_b - M0) * exp(-kappa*(t - t0));
Teq = M0 * ones(size(t));

plot(t, T_a, 'b-', 'LineWidth', 1.5); hold on
plot(t, T_b, 'r-', 'LineWidth', 1.5)
plot(t, Teq, 'k--', 'LineWidth', 1.2)
xlabel('time (hours)')
ylabel('Temperature (^\circF)')
title('Solutions for T_0=50 and T_0=80; equilibrium T=75')
legend('T_0=50','T_0=80','Equilibrium 75')
grid on; 
hold off 

M0 = 75;
T0 = 50;
t0 = 0;
t = linspace(0,24,241);

kappa_vals = [1, 1/2, 1/4];
colors = ['b','r','g'];

figure; hold on
for i = 1:length(kappa_vals)
    k = kappa_vals(i);
    T = M0 + (T0 - M0) * exp(-k*(t - t0));
    plot(t, T, colors(i), 'LineWidth', 1.5)
end
plot(t, M0*ones(size(t)), 'k--', 'LineWidth', 1.2)
xlabel('time (hours)')
ylabel('Temperature (^\circF)')
title('Effect of kappa on T(t), T0=50, M0=75')
legend('kappa=1','kappa=1/2','kappa=1/4','Equilibrium 75')
grid on

