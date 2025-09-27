t= (0:24)

hold on 
k = 0.2;
C= 65-77;
plot (t,g(t,k,C), 'k-')

k = 2;
C= 65-77;
plot (t,g(t,k,C), 'r-','DisplayName','k=0.2, C=65-77')

k = 0.2;
C= 95-77;
plot (t,g(t,k,C), 'm-')

k = 2;
C= 95-77;
plot (t,g(t,k,C),'g-' )


hold off 

function T = g(t,k,C)
    T = 77 + C*exp(-k*t);
end