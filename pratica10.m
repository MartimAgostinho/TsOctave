#TS pratica10figure(1)
clf
k=0:200;                   % intervalo de tempo usado no ensaio

yk=2.594*cos((pi/8).*k-0.642)
figure(5)

stem( yk,k )



w=-pi:2*pi/200:pi;    %  frequencias a usar no grï¿½fico
z1=exp(-i*w);          %  simplifica a expressï¿½o de Hw
Hw=(1.0468*z1.^2  ) ./ ( 1-1.2162*z1+0.7396*z1.^2);
subplot(211)
plot(w,abs(Hw))    %  diagrama de modulo
ylabel("|H(w)|")
xlabel("frequency")
subplot(212)
plot(w,angle(Hw))    %  diagrama de argumento
ylabel("arg{H(w)}")
xlabel("frequency")

figure(2)
clf

num=[ 0   0   0.5  ];    % numerador da funcao de transferencia
den=[ 1  -1  0.16  ];     % denominador da funcao de transferencia
k=0:200;                   % intervalo de tempo usado no ensaio
w_o= pi/12;                % frequencia do sinal de entrada
u= cos(w_o*k);            % o sinal de entrada
y=filter(num,den,u);      % calculo do sinal de saida de Hw
subplot(211)
stem(k,u);           % grafico do sinal de entrada para comparação
ylabel("u(k)")
xlabel("k")
subplot(212)
stem(k,y);           %  grafico do sinal de saida
ylabel("y(k)")
xlabel("k")

