clear;

Ta = 0.01;
N = 100;

figure(1);
[x,t1] = GeraSinal(N,Ta);
title("Sinal Gerado")

[X,f] = espetro(x,Ta);
figure(2);
stem(f, abs(X))
title("Espetro Sinal Gerado")

filterX = zeros(1, length(f));
filterX(f>-2 & f<2) = X(f>-2 & f<2);  %filtro

figure(3)
stem(f, abs(filterX));
title("Espetro do Sinal Filtrado");

figure(4)
[y, t2] = ReconstroiSinal(filterX, Ta);
plot(t2,y)
title("Sinal Filtrado");