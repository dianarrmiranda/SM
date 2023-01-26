function [x,t] = inve_espetro(X,f)
%Reconstrói
%   X - Representação em Fourier
%   f - Frequências desse sinal.

N = length(X);

Fa = max(f) *2;

Ta = 1/Fa;

t = (0 : (N-1)) * Ta;

x = ifft(ifftshift(X))*N;

end