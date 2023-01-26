clear;

%Alinea c)
f0 = 10;
Ta = 0.01;
Np = 100;

T=1/f0;

N = round(Np*T/Ta);
t = (0: (N-1))' *Ta;

z = 10 + 14*cos(20*pi*t - pi/3) + 8*cos(40*pi*t + pi/2);

[Z, f] = espetro(z, Ta);

subplot(121)
plot(f,abs(Z))
xlabel("Frequência (Hz)")
ylabel("Amplitude")
title("Espetro x(t) = 10 + 14*cos(20*pi*t - pi/3) + 8*cos(40*pi*t + pi/2)")

[y, g] = inve_espetro(Z, f);
subplot(122)
plot(g,y)
xlabel("Tempo")
ylabel("x")
title("Reconstruída")