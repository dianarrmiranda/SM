clear all

ta = 0.001;

T = 0.1; %periodo 1/frequencia

t = 0:ta:4*T;

p = sin(20*pi*t + 70*pi/180) + sin(20*pi*t + 200*pi/180);

plot(t, p);