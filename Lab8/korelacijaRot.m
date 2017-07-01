function [izlaz] = korelacijaRot(A,B,fi)
    
max1=max(size(A,1),size(B,1));
    max2=max(size(A,2),size(B,2));
    
    pA=zeros(max1,max2);
    pB=zeros(max1,max2);
    
    halfA1=floor(size(A,1)/2);
    halfB1=floor(size(B,1)/2);
    halfA2=floor(size(A,2)/2);
    halfB2=floor(size(B,2)/2);
    
    startA1=round(max1/2)-halfA1+1;
    startB1=round(max1/2)-halfB1+1;
    startA2=round(max1/2)-halfA2+1;
    startB2=round(max1/2)-halfB2+1;
    
    pA(startA1:startA1+size(A,1)-1,startA2:startA2+size(A,2)-1)=A;
    pB(startB1:startB1+size(B,1)-1,startB2:startB2+size(B,2)-1)=B;
    
    ppB=imrotate(pB, fi, 'bilinear','crop');
    
    izlaz=corr2(pA,ppB);
end