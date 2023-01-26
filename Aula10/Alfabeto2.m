function [simbolos, frequencia] = Alfabeto2(texto)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
simbolos = unique(texto);

numOcorr = zeros(1, length(simbolos));
frequencia = zeros(1, length(simbolos));

for i=1:length(simbolos)
    s = 0;
    for x=1:length(texto)
        if texto(x) == simbolos(i)
            s = s+1;
        end
    end
    numOcorr(i) = s;
end

total = sum(numOcorr);

for i=1:length(numOcorr)
    frequencia(i) = numOcorr(i)/total;
end 

end