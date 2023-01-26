clear;

%% Determine o período, a frequência e o valor máximo (valor de pico) de cada um dos
% seguintes sinais periódicos. Verifique visualmente no MATLAB.

ta = 0.001;
T = 0.5; %periodo 1/frequencia

t = 0:ta:4*T;

x = 2*sin(4*pi*t);

plot(t, x);