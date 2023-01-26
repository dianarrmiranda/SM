function soma = serieTaylor(N, x)

%Cálculo da série de Taylor da funcção seno 

soma = 0;
for n=1:N
    soma = soma + ((x.^n)/factorial(n))*sin((n*pi)/2);
end

end