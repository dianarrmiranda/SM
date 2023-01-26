function [X,f] = espetro(x, Ta)
%Espetro - Retorna e apresenta o espetro
%   x - Vetor de amostras
%   Ta - Período de amostragem

N = length(x);

X = fftshift(fft(x))/N;

Fa = 1/Ta;

f = (0:N-1) * (Fa/N) - Fa/2; 

end