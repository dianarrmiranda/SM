clear all

ta = 0.001;

T = 1; %periodo 1/frequencia

t = 0:ta:4*T;

w = sin(6*pi*t) + sin(8*pi*t + 0.1);

plot(t, w);