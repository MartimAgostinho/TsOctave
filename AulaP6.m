pkg  load control;

t = -2:0.01:20

den = [ 18 1 ]
num = [ 6 0 ]
H = tf(num,den)

vi = sin(1.2.*t).*(t >= 0)

figure(2)
lsim(H,vi,t)
