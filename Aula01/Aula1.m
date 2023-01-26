
%Exemplo 1
a=2;
b=3;

c=a+b

%Sequencia n impares até 10
A = 1:2:10

%Gere uma sequência de 11 números inteiros entre -5 e 5.
B = linspace(-5, 5, 11)
C = -5:1:5

%Matriz
D =[1 5 1-j;4 j -1]

    %Acrescentar nova linha e coluna à matriz D
D(3,:) = [5 j 3]
    %Criar nova matriz com as colunas impares da matriz D
E = D(:,1:2:end)

%Exercicio 2 - Criar gráfico simples

x = linspace(-2*pi,0, 200);
y = sin(x).*exp(x);

plot(x, y, ":r")
axis([-8 0 -0.5 0.8])
title('Exercício 1')
legend('sin(x).*exp(x)')
ylabel('eixo y')
xlabel('eixo x')

%Várias curvas no mesmo gráfico
x = linspace(0,2*pi);
plot(x,sin(x))
hold on
plot(x,sin(2*x),'r')
plot(x,sin(3*x),'g')
hold off
legend('sin(x)', 'sin(2*x)','sin(3*x)')

%Exercicio 3
w = linspace(0, 2*pi, 200);
f = sin(4*w).*exp(i*w);
g = sin(8*w).*exp(i*w);

subplot(2,1,1)
plot(f,'g')
subplot(2,1,2)
plot(g,'r')



