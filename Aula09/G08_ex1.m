clear;

load("Mensagem.mat");

%Mensagem = 'AABCABABAAABBCABCAAC';

%% Exercício 1
% Retorna a lista com todas as letras usadas e quantas vezes é que cada uma
% aparece

[simbolos, count] = Alfabeto1(Mensagem);

fprintf("Lista de caracteres usados: \n");
for i=1: length(count)
    fprintf("   %s - %d", simbolos(i), count(i));
    if i ~= length(count)
        fprintf("  |")
    end
end

fprintf("\n")

%% Exercicio 2

[simbol,frequencia] = Alfabeto2(Mensagem);

fprintf("Probabilidade de cada caracter: \n");
for i=1: length(frequencia)
    fprintf("   %s - %0.3f", simbol(i), frequencia(i));
    if i ~= length(frequencia)
        fprintf("  |")
    end
end

fprintf("\n")

%% Exercicio 3

%Código binário
    % A - 00 | B - 10 | C - 11
    % Este código não é ambíguo
    % Seriam necessário 2 bits para cada simbolo, logo para codificar a
    % mensagem são necessários 2 * 20 = 40 bits

%% Exercício 4

    % Q (0.401) - 0
    % S (0.135) - 10
    % W (0.128) - 110
    % Z (0.089) - 1110
    % D (0.082) - 11110
    % C (0.062) - 111110
    % X (0.053) - 1111110
    % V (0.046) - 11111110
    % R (0.003) - 111111110

    nbits = NumeroBits(Mensagem);

    fprintf(" O número total de bits necessários para codificar esta mensagem é %d \n", nbits);

%% Exercício 5 
    % Caderno

%% Exercício 6

H = Entropia(Mensagem);
fprintf(" Média da quantidade de informação associada aos símbolos é %0.3f bps\n", H);