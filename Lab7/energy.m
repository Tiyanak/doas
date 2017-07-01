function imgO = energy(img,pomak)
    B=16;
    img=im2double(img);
    
    imgFT=fftshift(fft2(img))/numel(img);
    imgFT(1,1)=0;
    img=ifft2(imgFT);
    
    img1=img(pomak(2)+1:end,pomak(1)+1:end);
    img2=img(1:end-pomak(2),1:end-pomak(1));
    [h,x]=hist3([img1(:),img2(:)],{(0.5:B)/B,(0.5:B)/B});
    
    p=h/sum(h(:));
    imgO=sum(sum(p.*p));
end