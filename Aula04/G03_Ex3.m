clear;clc;

f0 = 1;
Np = 2;
k=8; % Número de harmónicas a considerar na decomposição.
T0 = 1; % s
Ta= 0.001; % em segundos, tempo de amostragem
N = round(Np/(f0*Ta));



t = (0: (N-1))' *Ta;
y = sawtooth(2*pi*f0*t+pi/2,1/2); %antes do sinal ser deconstruido
subplot(1,2,1)
plot(t,y);
ylim([-1.5,1.5]);
title('Sawtooth')
xlabel("t")
ylabel("Série Composta")
grid on

[a_k,b_k] =coeficientesAKBK(Ta,T0,y,k); % deconstruir o sinal nos coeficientes

[xt,t] = fourier(Ta,f0,Np,a_k,b_k);
subplot(1,2,2)
plot(t,xt)
title('Sinal após reconstrução')
xlabel("t")
ylabel("x(t)")
ylim([-1.5,1.5]);
grid on

% os sinais são exatamente iguais, o que significa que não se perdeu
% informação após deconstrução do sinal


