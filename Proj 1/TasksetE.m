%declare time interval
t= (0:24);

%plotting each diffrent function 
hold on 
k = 0.2;
C= 65-77;
plot (t,g(t,k,C), 'k-', DisplayName= 'k=0.2, C=-12')

k = 2;
C= 65-77;
plot (t,g(t,k,C), 'r-', DisplayName= 'k=2, C=-12')

k = 0.2;
C= 95-77;
plot (t,g(t,k,C), 'm-', DisplayName= 'k=0.2, C=18')

k = 2;
C= 95-77;
plot (t,g(t,k,C),'g-', DisplayName= 'k=2, C=18' )

grid on 
legend
hold off 

%setting function to easily input new values of t,k and C
function T = g(t,k,C)
    T = 77 + C*exp(-k*t);
end