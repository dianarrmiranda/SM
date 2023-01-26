
x = linspace(-1, 1, 51);
y = linspace(-1, 1, 51);

[XX, YY] = meshgrid(x,y);

conta1 = cos(4*pi*(XX+YY));
conta2 = exp(-abs(XX+YY));

f = conta1 .* conta2; %coloca-se o ponto pq nao queremos fazer uma conta matricial

surf(x, y, f), axis tight, shading interp
xlabel("x")
ylabel("y")

[x1,y1] = f2(2,3) %funcao criada na aula para exprimentar