clear;
T = 1; %s
f = 1; %Hz

ta = 0.001;
np = 2; %número de períodos, número à nossa escolha

k = 30;

t1 = 0:ta:2-2*ta;
xx = square(2*pi*1*t1);

[a_k,b_k] =coeficientesAKBK(ta,T,xx',k); % deconstruir o sinal nos coeficientes
