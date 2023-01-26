clear;

%% Determine as expressões de 𝑎𝑘 e 𝑏𝑘 correspondentes à representação do seguinte sinal
%em Série de Fourier:

T = 1; %s
f = 1; %Hz

ta = 0.001;
np = 2; %número de períodos, número à nossa escolha

k = 50;

ind = 1:2:k-1;
bk = zeros(1, k-1);

bk(ind) = 4./(pi*ind);

bk = [0 bk];

ak = zeros(size(bk));

[x, t] = fourier(ta,f,np, ak, bk);

t1 = 0:ta:2-2*ta;
xx = square(2*pi*f*t1);


plot(t1, xx) %quadrado
hold on
plot(t, x) %gráfico função

hold off

