function [x, t] = fourier(ta, f0, np, ak, bk)
%Calcular a série de Fourier
%   - 𝑇𝑎: Período de amostragem, em segundos;
%   - 𝑓0: Frequência do sinal composto, em Hz;
%   - 𝑁𝑝: Número de períodos a considerar para o sinal resultante;
%   - 𝑎𝑘: Vetor (𝐾x1) com os valores de 𝑎𝑘 da série;
%   - 𝑏𝑘: Vetor (𝐾x1) com os valores de 𝑏𝑘 da série.


n = round(np/(f0*ta));

t =(0 : (n-1))'* ta; %t = 0:ta:Nta - ta

x = zeros(n,1);

for k=1:length(ak)
    x = x + ak(k)*cos(2*pi*(k-1)*f0*t) + bk(k)*sin(2*pi*(k-1)*f0*t);
end
