clear all

ta = 0.001;

T = 2; %periodo  - 1/frequencia

t = 0:ta:4*T;

q = sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t);

plot(t, q);