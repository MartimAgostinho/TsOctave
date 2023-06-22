clear u k y L

% complete o comando seguinte com os valores
% que lhe foram indicados:
A1= 1.1314
A2= -0.64
B1= 1.0172

function [sinal,k]=degrau(k)
	sinal=1*(k>=0);
end

k=-10:150;
u=degrau(k);
%inicializacao de sistema (inicialmente em repouso)
y=zeros(size(k));

L=length(k);
for ind=3:L
	y(ind) = A1*y(ind-1) + A2*y(ind-2) + B1*u(ind-2);
end

figure(1)
subplot(211)
stem(k,y)
axis([-10 150  -1  5.5])
ylabel('y(k)')
title('sinal de saida')
subplot(212)
stem(k,u)
axis([-10 150  -1  5.5])
ylabel('u(k)')
xlabel('k')
title('sinal de entrada')
