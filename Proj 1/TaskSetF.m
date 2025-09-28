addpath('/Users/addi/Documents/MATLAB/APPM-2360/Proj 1');


ti = 0;
tf = 72;
npts = 720;
y0 = 75;


[t,w] = rk4(ti,tf,npts,y0,@f);
hold on
plot(t,w,'k-')
xlabel('time')
ylabel('Temp')
grid on 

plot (t,M(t), 'm--')

[m,idx]=max(w)



function dTdt = f(t,T)

% part 1
% dTdt= 7*sech((3/4)*(t-10))+2*(77-T);

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
%m= 85 - 10*cos((pi*(t-5)/12));
end