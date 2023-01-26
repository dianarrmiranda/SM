function x = reconstroi(X)
N = length(X);
x = ifft(fftshift(X))*N;
end