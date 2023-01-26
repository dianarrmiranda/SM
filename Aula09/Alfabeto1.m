function [simbolos, count] = Alfabeto1(texto)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
simbolos = unique(texto);

count = zeros(1, length(simbolos));

for i=1:length(simbolos)
    s = 0;
    for x=1:length(texto)
        if texto(x) == simbolos(i)
            s = s+1;
        end
    end
    count(i) = s;
end

end