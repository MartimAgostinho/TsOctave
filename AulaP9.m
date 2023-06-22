%Pratica 9

clear all;

%% Exercise 5
N0=15;
k_per = 0:N0-1;
x_per = 2.*cos( ((2*pi)/5 )*k_per )+cos( ((4*pi)/15 )*k_per )+3.*cos( ((8*pi)/15 )*k_per );
cn=fft(x_per)/N0;
n=0:N0-1;
wn=n*2*pi/N0;

figure(1);
stem(k_per,x_per);


figure(7001);
stem(n,cn);
xlabel('n'); ylabel('c_n');
figure(7003);
stem(wn,cn);
xlabel('\omega_n'); ylabel('c_n');
ax = axis; axis([0,2*pi,ax(3:4)]);

% same but centered for n = 0
cn_center=fftshift(cn);
n=-round(N0/2):round(N0/2)-1;
wn_center=n*2*pi/N0;
figure(7004);
stem(wn_center,cn_center);
xlabel('\omega_n'); ylabel('c_n');
ax = axis; axis([-pi,pi,ax(3:4)]);

figure(7005);
stem3(real(exp(j*wn)),imag(exp(j*wn)),cn);
xlabel('Re');
ylabel('Im');
zlabel('c_n');
axis equal;
