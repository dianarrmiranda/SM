function [N,M, img] = Load8bitImage(Filename)
%Carrega a infromação do ficheiro
    fid = fopen(Filename,'rb');

    N = fread(fid,1,'uint16');
    M = fread(fid,1,'uint16');
    
    img = fread(fid,[N,M],'uint8');
    img = uint8(img);

    fclose(fid);
end