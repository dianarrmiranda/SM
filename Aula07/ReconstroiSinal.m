function [y,t] = ReconstroiSinal(x,Ta)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

N = length(x);
fa = 1/Ta;
fs = 100 * fa;
t = (0:(N-1)*100)*(1/fs);
y = zeros(1,N*100);
soma = 0;

   for n=0:N-1
       soma = soma + x(n+1)*sinc(fa*(t-n*Ta));
       y = soma;
   end

end