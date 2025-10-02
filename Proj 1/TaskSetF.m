%adding rk4 call
addpath('/Users/addi/Documents/MATLAB/APPM-2360/Proj 1');

%rk4 inital condidions
ti = 0;
tf = 24;
npts = 720;
y0 = 75;

%rk4 call
[t,w] = rk4(ti,tf,npts,y0,@f);

% Define the target temperature
targetTemp = 81;

% Find all indices where the temperature crosses 81°F
crossIdx = find(diff(sign(w - targetTemp)));

% Initialize arrays to hold crossing times
t_cross_all = [];

for i = 1:length(crossIdx)
    idx = crossIdx(i);
    t1 = t(idx);
    t2 = t(idx + 1);
    w1 = w(idx);
    w2 = w(idx + 1);

    % Linear interpolation to find more accurate crossing time
    t_cross = t1 + (targetTemp - w1)*(t2 - t1)/(w2 - w1);
    t_cross_all(end+1) = t_cross; % Add to array

    % Optional: plot the intersection point
    plot(t_cross, targetTemp, 'ro', 'MarkerFaceColor', 'r');
end

% Display the times
disp('Temperature crosses 81°F at:');
disp(t_cross_all');


%plotting
hold on
plot(t,w,'k-')
xlabel('Time (hours)')
ylabel('Temp (ºF)')
grid on 

%plot (t,M(t), 'm--')

yline(81, 'r--', 'Line at y = 81')

%finding max value and location
%[m,idx]=max(w)





% function, changed out for what part of question was on
function dTdt = f(t,T)

 %part 1
 %dTdt= 7*sech((3/4)*(t-10))+2*(77-T);

% part 2
%dTdt= 0.25*(85 - 10*cos(pi*((t-5)/12))-T);

%part 3 (kappa = 2)
dTdt=0.25*(85-10*cos(pi*((t-5)/12))-T)+2*(77-T);
%(kappa = 0.5)
dTdt=0.25*(85-10*cos(pi*((t-5)/12))-T)+0.5*(77-T);

%part 4
%dTdt=0.25*(85-10*cos(pi*((t-5)/12))-T)+7*sech((3/4)*(t-10))+2*(77-T);

end

%function m = M(t)
%part 4 c
%m= 85 - 10*cos((pi*(t-5)/12));
%end