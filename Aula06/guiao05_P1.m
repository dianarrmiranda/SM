%% Guião 05

%% Exercício 2 - 

%% Alinea a)

Ta = 0.2;

t = 0:Ta:5;

x = sin(2*pi*t);

figure(1)
title("Alinea a)")
plot(t,x, "r.")
hold on

[y, to] = ReconstroiSinal(x, Ta);

plot(to,y, "b")
legend("Sinal Original", "Sinal Rconstruido")
grid on
hold off

%% Alinea b)

Ta = 0.04;

t = 0:Ta:5;

x = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);

figure(2)
title("Alinea b)")
plot(t,x, ".r")
hold on

[y, to] = ReconstroiSinal(x, Ta);

plot(to,y, "b")
legend("Sinal Original", "Sinal Rconstruido")
grid on
hold off
