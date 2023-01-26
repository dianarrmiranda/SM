function [a_k, b_k] = coeficientesAKBK(Ta,T0,x,k)
%Calcular os coeficientes ak e bk
%Ta= Período de Amostragem em segundos;
%T0 = Período do Sinal, em segundos;
%x = Vetor (Nx1) com as amostras sucessivas do sinal a decompor (deverá ser
%passado um número inteiro de períodos deste sinal, não devendo o último
%período ficar truncado);
%K: Número de harmónicas a considerar na decomposição.

N= length(x);
f = 1/T0;
T = ((0:N-1))' *Ta;
a_k = zeros(k,1);
b_k= zeros(k,1);
a_k(1) = mean(x);
b_k(1) = 0;

    for i=2:k+1
        a_k(i) = 2/N *(x' * cos(2*pi*f*(i-1)*T));
        b_k(i) = 2/N *(x' * sin(2*pi*f*(i-1)*T));
    end
end