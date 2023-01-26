function [NumBits,NumBPS] = GeraMensagem(f,CompMesg, nBits)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

s = randsample(1:length(f), CompMesg, true, f/sum(f));
NumBits = 0;

for n=1:length(f)
    NumBits = NumBits + sum(s ==n) *nBits(n);
end

NumBPS = NumBits/CompMesg;

end