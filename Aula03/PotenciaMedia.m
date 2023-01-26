function potencia = PotenciaMedia(x,ta,T)
%Potencia Média
%   Isto funciona assumindo que x é um vetor linha (1+x), se for um vetor
%   coluna não funciona
%   x - Vetor de amostras do sinal x
%   ta - período de amostragem
%   T - período do sinal
   

N = T/ta;

p = x(1:N) * x(1:N)';

pm = p/N;

potencia = pm;
end