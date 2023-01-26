
%% Crie os seguintes sinais num ficheiro do MATLAB, usando um período de amostragem
%% T𝑎 = 0.01 segundos.

ta = 0.01;

t = 0:ta:5; 

x = 2*sin(4*pi*t);

y = cos(10*pi*t);

z = x .* y;

t1 = 0:ta:10;

w = 3*sin(pi*t1) + 2*sin(6*pi*t1);

q = 2*sin(2*pi*(2*t + t));


plot(t, x, "-r"); % traço contínuo e fino, de cor vermelha
hold on
plot(t, y,"--b", "LineWidth", 3); % traço grosso a tracejado, de cor azul
plot(t, z, "-go"); %traço contínuo e fino, de cor verde, com pontos em cada amostra
plot(t1, w,"-y", "LineWidth",3); %– traço contínuo e grosso, de cor amarela
plot(t, q, "LineWidth",3);
hold off

legend("a) x(t)","b) y(t)", "c) z(t)", "d) w(t)", "e) q(t1,t2)") 


