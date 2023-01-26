
%% Represente um gráfico onde o valor do sinal em cada ponto seja indicado
%através de da cor, numa escala de cores.

ta = 0.01;

t1 = 0:ta:5; 
t2 = 0:ta:5; 

n1 = length(t1);
n2 = length(t2);

q = zeros(n1,n2);
for k1=1:n1
    q(k1, :) = 2*sin(2*pi*(2*t1(k1) + t2));
end



mesh(t1, t2,q)

cmap = colormap;
cmap_gray = [(0:(1/64):1)' (0:(1/64):1)' (0:(1/64):1)'];

colormap(cmap_gray);
