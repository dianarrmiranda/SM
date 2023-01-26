function Stream = EncodeImage_RLE(Image)
%Codificação RLE - compressão efetuada na matriz image
%   Detailed explanation goes here
    [N,M] = size(Image);
    count = uint8(0);
    k = 1;
    Stream(k,1) = Image(1,1); 
    for n=1:N
        for m=1:M
            if Image(n,m) == Stream(k,1)
                count = count + 1;
                if count == 255
                    k = k + 1;
                    Stream(k,1) = count;
                    k = k+1;
                    Stream(k,1) = Image(n,m);
                    count = 1;
                end
            else
                k = k + 1;
                Stream(k,1) = count;
                k = k+1;
                Stream(k,1) = Image(n,m);
                count = 1;
            end
        end
    end

    k = k+1;
    Stream(k,1) = count;
    
end