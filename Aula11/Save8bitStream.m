function Save8bitStream(Filename,N,M,Stream)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    fid = fopen(Filename, 'wb');

    fwrite(fid, N, 'uint16');
    fwrite(fid, M, 'uint16');
    fwrite(fid, Stream, 'uint8');
    
    fclose(fid);
end