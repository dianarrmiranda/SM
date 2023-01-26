clear;

%Alinea a)
f0 = 1;
Ta = 0.01;
Np = 100;

T=1/f0;

N = round(Np*T/Ta);
t = (0: (N-1))' *Ta;

x = sin(2*pi*f0*t);

[X, f] = espetro(x, Ta);

subplot(121)
plot(f,abs(X))
xlabel("Frequência (Hz)")
ylabel("Amplitude")
title("Espetro x(t) = sin(2*pi*1*t)")

[y, g] = inve_espetro(X, f);
subplot(122)
plot(g,y)
xlabel("Tempo")
ylabel("x")
title("Reconstruída")