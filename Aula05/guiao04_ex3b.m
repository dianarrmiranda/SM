clear;

%Alinea B

f0 = 1;
Ta = 0.01;
Np = 50;

T=1/f0;
N = round(Np*T/Ta);
t = (0: (N-1))' *Ta;


y = sin(10*pi*t) + cos(12*pi*t) + cos(14* pi *t - pi/4);

[Y, f] = espetro(y, Ta);

subplot(121)
plot(f,abs(Y))
xlabel("Frequência (Hz)")
ylabel("Amplitude")
title("Espetro x(t) = sin(10*pi*t) + cos(12*pi*t) + cos(14* pi *t - pi/4)")

[y, g] = inve_espetro(Y, f);
subplot(122)
plot(g,y)
xlabel("Tempo")
ylabel("x")
title("Reconstruída")