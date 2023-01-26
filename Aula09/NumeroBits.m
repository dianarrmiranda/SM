function numBits = NumeroBits(texto)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

  N = length(texto);
  [Simbolos,Frequencia] = Alfabeto2(texto);
  [NewFreq,i] = sort(Frequencia,'descend');
  NewSymb = Simbolos(i);
  
  numBits = 0;
  
  for i = 1 : length(NewSymb)
    numBits = numBits + i * NewFreq(i)*N;
  end

end