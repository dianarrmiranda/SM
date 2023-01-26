function H = Entropia(texto)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

H = 0;

[simbolos, frequencia] = Alfabeto2(texto);

for i=1 : length(simbolos)
    H = H + ( frequencia(i) * log2(1/frequencia(i)) ); 
end

end