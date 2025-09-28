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

