clear;

A = 1; %A1 = A2 = A3 = 1

f1 = 10;
f2 = 20;
f3 = 30;

% (rand() * 2 - 1) * pi; opçao da net

phi = rand(1,3) * 2 * pi - pi;

ta = 0.001;

T = 1/10; %periodo 1/frequencia

t = 0:ta:4*T;


x = sin(2*pi*f1*t + phi(1)) + sin(2*pi*f2*t + phi(2)) +sin(2*pi*f3*t + phi(3));

potencia = PotenciaMedia(x,ta,T)

plot(t,x)

%A potencia não se altera pois não depende dos valores da fase. Já o valor
%do pico sofre alterações pois como há mais que uma fase diferente
%acontece um deslocamento e há alterações na amplitude.
