clear;

load('Guitar03.mat');
%% Exercício 1 -

%sound(x, fa)

%% Exercício 2 -


Ta = 1/fa;

[X, freq] = espetro(x, Ta);

figure(1)
plot(freq, abs(X))
xlim([-4000 4000])
grid on
xlabel("Freq (Hz)")
ylabel("x")
title("Espetro do sinal ")

s = 0;

%% Exercício 3

filtro = zeros(1,length(freq));
filtro(abs(freq) > 100 & abs(freq) <400) = 1;

figure(2)
plot(freq, filtro) 
xlim([-2000 2000])
ylim([0 2])
title("Filtro")

newfreq=zeros(1, length(freq));
newx=zeros(1, length(X));

for i=1:length(X)
    if filtro(i) == 1
        newfreq(i) = freq(i);
        newx(i) = X(i);
    end
end

figure(3)
plot(newfreq, abs(newx))
xlim([-2000 2000])
title("Espetro do sinal com filtro")
xlabel("Freq (Hz)")
ylabel("x")


[y, t] = inve_espetro(newx, newfreq);

figure(4)
plot(t, y)
xlim([0 14])
title("Sinal reconstruído com filtro")
xlabel("t")

ylabel("x")

sound(real(y), fa)

[y1, t1] = inve_espetro(X, freq);

figure(5)
plot(t1, y1)
xlim([0 14])
title("Sinal reconstruído")
xlabel("t")
ylabel("x")
