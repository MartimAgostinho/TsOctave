% primeiro trabalho pratico

t = -7:0.01:6;

x1 = 2*( ( (t+4 >=0 ) - (t-1 >=0) )- ...
( (1/3)*( t+2 ).*( ( t+2 >=0 ) - ( t-1 >=0) )));

t2 = -2*t-2

r = 2*(x1);

plot(t2,r);

hold on;
