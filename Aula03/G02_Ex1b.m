clear all

ta = 0.001;

T = 0.2; %periodo 1/frequencia

t = 0:ta:4*T;

y = sin(10*pi*t + pi/2);

plot(t, y);