clear;

%Alinea e)

f0 = 1;
Ta = 0.01;
Np = 5;

T=1/f0;

N = round(Np*T/Ta);
t = (-1: (N-1))' *Ta;

yy = sawtooth(2*pi*f0*t+pi/2, 1/2);


[YY, f] = espetro(yy, Ta);

subplot(121)
plot(f,abs(YY))
xlabel("Frequência (Hz)")
ylabel("Amplitude")
title("Espetro x(t) = sawtooth(t)")

[y, g] = inve_espetro(YY, f);
subplot(122)
plot(g,y)
xlabel("Tempo")
ylabel("x")
title("Reconstruída")
