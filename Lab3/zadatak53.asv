pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';
pathFunkcija = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\funkcije\';

[img1, map1] = imread(strcat(pathSlika, 'klis2.png'));
 
NP = frqflt([512 512], 512/2, 512/2, 256*0.5);
VP = not(NP);

f1 = frqflt([512 512], 256, 256, round(256*0.4));
f2 = frqflt([512 512], 256, 256, round(256*0.6));

PB = (f1 | not (f2));
PP = not(PB);

figure(1);
subplot(221);
imshow(NP);
subplot(222);
imshow(VP);
subplot(223);
imshow(PP);
subplot(224);
imshow(PB)

img1 = imresize(img1, [512, 512]);

imgFT = fft2(img1);

imgNP = imgFT.*fftshift(NP);
imgNP = ifft2(imgNP);

imgVP = imgFT.*fftshift(VP);
imgVP = ifft2(imgVP);

imgPP = imgFT.*fftshift(PP);
imgPP = ifft2(imgPP);

imgPB = imgFT.*fftshift(PB);
imgPB=ifft2(imgPB);

figure(2);
subplot(221);
imagesc(abs(double(imgNP)));
subplot(222);
imagesc(abs(double(imgVP)));
subplot(223);
imagesc(abs(double(imgPP)));
subplot(224);
imagesc(abs(double(imgPB)));
colormap(gray)
