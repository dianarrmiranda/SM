function [N, M, Stream] = Load8bitStream(Filename)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    fid = fopen(Filename,'rb');

    N = fread(fid,1,'uint16');
    M = fread(fid,1,'uint16');
    
    Stream = fread(fid,'uint8');
    Stream = uint8(Stream);

    fclose(fid);
    
end