clear;

%% Valores ex 1
fprintf("Exercício 1)\n")
f = [64 14 10 7 5];
nBits = [1 2 3 4 4];
simbolos = ['B' 'A' 'D' 'E' 'C'];

%Alinea a)
H = 0;
for i=1 : length(simbolos)
    H = H + ( (f(i)/100) * log2(1/(f(i)/100)) ); 
end

fprintf("  Entropia: %0.3f bps\n", H);

%Alinea b) Fazer árvore binária
% B - 1
% A - 00
% D - 010
% E - 0111
% C - 0110

% Alinea c e ex 2 -

ComMesg = 10000;

[NumBits,NumBPS] = GeraMensagem(f,ComMesg,nBits);
 
fprintf("  Número de bits: %d, Número médio de bps: %0.3f\n", NumBits, NumBPS)
%O número médio de bps não pode ser inferior à entropia

%% Exercício 3
fprintf("Exercício 3)\n")
%Alinea a) Árvore binária

% A : 01
% L : 10
% O : 11
% ! : 000
% P : 001

f = [0.2 0.05 0.25 0.15 0.35];
nBits = [2 3 2 3 2];

entropia = 0;
for n=1:length(f)
    entropia = entropia + f(n) * log2(1/f(n));
end

nMedBits = sum(f.*nBits);
fprintf(" b) Entropia: %0.3f\n", entropia)
fprintf("    Número Médio de bits: %0.3f bps\n", nMedBits)


% Alinea c - OLA! - 111001000

%Exercício 4 - 
% limite inferior = lim_inf_ant + ( lim_sup_ant - lim_inf_ant) *
% lim_inf do simbolo que se está a expandir

% limite superior = lim_inf_ant + ( lim_sup_ant - lim_inf_ant) *
% lim_sup do simbolo que se está a expandir


