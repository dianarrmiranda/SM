clear;

%% Exercício 1 

[Image, ColorMap] = imread('Parede_8bit.bmp');

imshow(Image,ColorMap)

% Esta imagem está cordificada em 8 bits. (0 a 255)
% Como as cores são praticamente todas iguais a codificação indicada é a
% RLE

%% Exercício 2 - Guardar num ficheiro informação contida na imagem

%Função Save8bitImage
Save8bitImage("Ex2.txt", Image)


%% Exercício 3 - Carregar informação guardada anteriormente

%Função Load8bitImage
[N, M, image2] = Load8bitImage("Ex2.txt");

figure(2)
imshow(image2,ColorMap)

%% Exercício 4 - 

%compressão (sem perdas) da informação contida na matriz da imagem com base no algoritmo RLE (Run-Length Encoding)
[Stream] = EncodeImage_RLE(Image);

%% Exercício 5 - 

%guardar num ficheiro de menor tamanho a informação resultante da aplicação do método RLE à imagem original
Save8bitStream("Ex5.txt", N, M, Stream);

%% Exercício 6 - 

%ler a informação contida no ficheiro comprimido
[N6, M6, Stream6] = Load8bitStream('Ex5.txt'); 

%% Exercício 7 -

%descodificar a informação comprimida
Image7 = DecodeImage_RLE(N,M,Stream);
figure(3)
imshow(Image7,ColorMap);
title('Imagem do exercício 7')

%% Exercício 8 - 

%LALAALAILAILAI

% Sequência | Código | Saída
%     A     |    1   |   -
%     I     |    2   |   -
%     L     |    3   |   -
%    LA     |    4   |   3
%    AL     |    5   |   1
%   LAA     |    6   |   4
%   ALA     |    7   |   5
%    AI     |    8   |   1
%    IL     |    9   |   2
%   LAI     |    10  |   4
%   ILA     |    11  |   9

% Código = 314512498

% Rácio de Compressão = nbits originais x tamanho / nbit compressao x tamanho 
%                     = 14*8 / 9*8 = 1.56
% 100 - (9*8*100)/(14*8) = 35.71% de compressão


