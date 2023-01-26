clear;

%Alinea d)
f0 = 1;
Ta = 0.01;
Np = 5;

T=1/f0;

N = round(Np*T/Ta);

t = (0: (N-1))' *Ta;

xx = square(2*pi*f0*t);


[XX, f] = espetro(xx, Ta);

subplot(121)
plot(f,abs(XX))
xlabel("Frequência (Hz)")
ylabel("Amplitude")
title("Espetro x(t) = square(t)")

[y, g] = inve_espetro(XX, f);
subplot(122)
plot(g,y)
xlabel("Tempo")
ylabel("x")
title("Reconstruída")