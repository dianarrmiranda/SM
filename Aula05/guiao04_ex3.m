clear;

%Alinea a)
f0 = 1;
Ta = 0.01;
Np = 2;

T=1/f0;

N = round(Np*T/Ta);
t = (0: (N-1))' *Ta;

x = sin(2*pi*f0*t);

[X, f] = espetro(x, Ta);

subplot(121)
plot(f,abs(X))

[y, g] = inve_espetro(X, f);
subplot(122)
plot(g,y)

%Alinea b)

f0 = 1;
Ta = 0.01;
Np = 50;

T=1/f0;
N = round(Np*T/Ta);
t = (0: (N-1))' *Ta;


y = sin(10*pi*t) + cos(12*pi*t) + cos(14* pi *t - pi/4);

[Y, f] = espetro(y, Ta);

subplot(221)
plot(f,abs(Y))

[y, g] = inve_espetro(Y, f);
subplot(222)
plot(g,y)

%Alinea c)
f0 = 10;
Ta = 0.01;
Np = 100;

T=1/f0;

N = round(Np*T/Ta);
t = (0: (N-1))' *Ta;

z = 10 + 14*cos(20*pi*t - pi/3) + 8*cos(40*pi*t + pi/2);

[Z, f] = espetro(z, Ta);

subplot(321)
plot(f,abs(Z))

[y, g] = inve_espetro(Z, f);
subplot(322)
plot(g,y)

%Alinea d)
f0 = 1;
Ta = 0.01;
Np = 5;

T=1/f0;

N = round(Np*T/Ta);
t = (0: (N-1))' *Ta;

xx = square(t);


[XX, f] = espetro(xx, Ta);

subplot(421)
plot(f,abs(XX))

[y, g] = inve_espetro(XX, f);
subplot(422)
plot(g,y)

%Alinea e)
f0 = 1;
Ta = 0.01;
Np = 5;

T=1/f0;

N = round(Np*T/Ta);
t = (-1: (N-1))' *Ta;

yy = sawtooth(t);


[YY, f] = espetro(yy, Ta);

%subplot(121)
%plot(f,abs(YY))

[y, g] = inve_espetro(YY, f);
%subplot(122)
%plot(g,y)



