function imgC = korelacija(A,B,pomak)
    tx=pomak(1);
    ty=pomak(2);
    if (size(A)<size(B))
        if (ty+size(A,1)<size(B,1))&&(tx+size(A,2)<size(B,2))
            pA = A;
            pB = B(ty+1:ty+size(A,1),tx+1:tx+size(A,2));
            imgC=corr2(pA,pB);
        else
            disp('Preveliki pomak')
        end
    else
        disp('Error. Prva slika veca od druge.')
    end
end