% Exercicio 2 aula P-2

k = -10:10;

xc = ( k+6>=0 )...
    +2*(k+8==0)...
    +(k+4==0) + (k+1==0) + (k==0) + (k-1==0)...
    -(k-5==0);

stem(k,xc);
hold on;
plot(k,xc,"--m");

