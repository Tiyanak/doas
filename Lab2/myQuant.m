function imgQ = myQuant( A, B )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

q = ( (max(A(:))-min(A(:))) / (2^B - 1));

imgQ = quant(A, q);

end

