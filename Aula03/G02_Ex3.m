clear;

%% Determine a potência associada
% A potência média é a soma de todos os valores de x ao quadrado
% a dividir por N

%Usando os valores do ex 1.a
ta = 0.001;

T = 0.5; %periodo 1/frequencia

t = 0:ta:4*T;

x = 2*sin(4*pi*t);

potenciaMedia = PotenciaMedia(x,ta,T)