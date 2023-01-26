

x = linspace(0, 2*pi);

soma2 = serieTaylor(2, x);
soma10 = serieTaylor(10, x);

plot(x, soma2, "LineWidth",3)
hold on
plot(x, soma10, "LineWidth",3)
plot(x, sin(x),"LineWidth",3)
hold off

legend("Série Taylor N = 2","Série Taylor N = 10", "Seno")
xlabel("x")
ylabel("y")
title("Série de Taylor da função seno")