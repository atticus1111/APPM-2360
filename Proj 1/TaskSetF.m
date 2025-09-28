%adding rk4 call
addpath('/Users/addi/Documents/MATLAB/APPM-2360/Proj 1');

%rk4 inital condidions
ti = 0;
tf = 72;
npts = 720;
y0 = 75;

%rk4 call
[t,w] = rk4(ti,tf,npts,y0,@f);

%plotting
hold on
plot(t,w,'k-')
xlabel('Time (hours)')
ylabel('Temp (ºF)')
grid on 

plot (t,M(t), 'm--')

%finding max value and location
[m,idx]=max(w)



% function, changed out for what part of question was on
function dTdt = f(t,T)

 %part 1
 %dTdt= 7*sech((3/4)*(t-10))+2*(77-T);

% part 2
%dTdt= 0.25*(85 - 10*cos(pi*((t-5)/12))-T);

%part 3 (kappa = 2)
%dTdt=0.25*(85-10*cos(pi*((t-5)/12))-T)+2*(77-T);
%(kappa = 0.5)
%dTdt=0.25*(85-10*cos(pi*((t-5)/12))-T)+0.5*(77-T);

%part 4
dTdt=0.25*(85-10*cos(pi*((t-5)/12))-T)+7*sech((3/4)*(t-10))+2*(77-T);

end

function m= M(t)
%part 4 c
m= 85 - 10*cos((pi*(t-5)/12));
end