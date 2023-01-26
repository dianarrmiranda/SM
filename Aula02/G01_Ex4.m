clear;

%% apresente as sucessivas “imagens” 2D que 𝑟(𝑥1, 𝑥2,𝑡(𝑘)), 𝑘 = 1, … , 𝑁, 
% apresenta à medida que o tempo 𝑡 vai progredindo.

ta = 1/25;

x = -5:ta:5;
t = 0:ta:5;
N = length(t);
N1 = length(x);

r = zeros(N1,N1);

for n=1:N
    tic
    for i=1:N1
        r(i,:) = 2*sin(2*pi*sqrt(x(i).^2+x.^2)-2*pi*t(n));
    end
    mesh(x,x,r);
    view(2);
    drawnow();
    pause(ta-toc);
end

