%% Parte 2 Guião 5

%% Ex 1 -

%% nbit = 2
nbit = 2;

Ta = 0.01;

t = 0:Ta:5;

x = sin(2*pi*t);
A = 1; %Amplitude


delta = A/2^nbit;

partition = zeros(1, 2^nbit-1);
partition(1) = -A + delta * 2;
for i=1:length(partition)-1
    partition(i+1) = partition(i) + delta * 2; 
end

codebook= zeros(1,2^nbit);
codebook(1) = -A + delta;
for i=1:length(codebook)-1
    codebook(i+1) = codebook(i) + delta * 2; 
end

[index, quants] = quantiz(x,partition, codebook);



figure(2)
plot(t,x)
hold on
plot(t,quants)

legend("Original", "Quantiz")
title("nbit = 2")
hold off


%Espetro

[z, fz] = espetro(x,Ta); %Espetro Original
[w, fw] = espetro(quants, Ta); %Espetro quants

figure(1)
subplot(1,2,1)
plot(fz,z)
title("Espetro sinal original")

subplot(1,2,2)
plot(fw,w)
title("Espetro sinal quantz")




%% nbit = 3
nbit = 3;

Ta = 0.01;

t = 0:Ta:5;

x = sin(2*pi*t);
A = 1; %Amplitude


delta = A/2^nbit;

partition = zeros(1, 2^nbit-1);
partition(1) = -A + delta * 2;
for i=1:length(partition)-1
    partition(i+1) = partition(i) + delta * 2; 
end

codebook= zeros(1,2^nbit);
codebook(1) = -A + delta;
for i=1:length(codebook)-1
    codebook(i+1) = codebook(i) + delta * 2; 
end

[index, quants] = quantiz(x,partition, codebook);


figure(3)
plot(t,x)
hold on
plot(t,quants)

legend("Original", "Quantiz")
title("nbit = 3")
hold off

%% nbit = 4
nbit = 4;

Ta = 0.01;

t = 0:Ta:5;

x = sin(2*pi*t);
A = 1; %Amplitude


delta = A/2^nbit;

partition = zeros(1, 2^nbit-1);
partition(1) = -A + delta * 2;
for i=1:length(partition)-1
    partition(i+1) = partition(i) + delta * 2; 
end

codebook= zeros(1,2^nbit);
codebook(1) = -A + delta;
for i=1:length(codebook)-1
    codebook(i+1) = codebook(i) + delta * 2; 
end

[index, quants] = quantiz(x,partition, codebook);


figure(4)
plot(t,x)
hold on
plot(t,quants)

legend("Original", "Quantiz")
title("nbit = 4")
hold off



