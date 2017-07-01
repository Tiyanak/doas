function [izlaz] = korelacijaFull(A,B)
    for j = 0:size(B,1)-size(A,1)-1
        for i = 0:size(B,2)-size(A,2)-1
            pomak=[i j];
            izlaz(i+1,j+1)=korelacija(A,B,pomak);
        end
    end
end