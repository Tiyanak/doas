pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img1, map1] = imread(strcat(pathSlika, 'klis2.png'));

imgFT = fft2(img1);
imgFT = imgFT / prod(size(imgFT));
imgFT = fftshift(imgFT);

A = 20 * log10(abs(imgFT));
f = angle(imgFT);

imgFTR = fft2(imresize(img1, 2));
imgFTR = imgFTR / prod(size(imgFTR));
imgFTR = fftshift(imgFTR);

AR = 20 * log10(abs(imgFTR));
fR = angle(imgFTR);

figure(1)
imshowpair(A, AR, 'montage')

imgFT = fft2(img1);
imgFT = imgFT / prod(size(imgFT));
imgFT = fftshift(imgFT);

A = 20 * log10(abs(imgFT));
f = angle(imgFT);

imgFTR = fft2(imrotate(img1, 45, 'crop'));
imgFTR = imgFTR / prod(size(imgFTR));
imgFTR = fftshift(imgFTR);

AR = 20 * log10(abs(imgFTR));
fR = angle(imgFTR);

figure(2)
imshowpair(A, AR, 'montage')

[img1, map1] = imread(strcat(pathSlika, 'detalj.png'));

imgFT = fft2(img1);
imgFT = imgFT / prod(size(imgFT));
imgFT = fftshift(imgFT);

A = 20 * log10(abs(imgFT));
f = angle(imgFT);

imgV1=uint8(zeros(1024, 1024)); 
imgV1(50:50+284,72:72+199)=img1;

imgFTR = fft2(imgV1);
imgFTR = imgFTR / prod(size(imgFTR));
imgFTR = fftshift(imgFTR);

AR = 20 * log10(abs(imgFTR));
fR = angle(imgFTR);

figure(3);
subplot(121);
imagesc(A);
subplot(122);
imagesc(AR);

figure(4);
subplot(121);
imagesc(f);
subplot(122);
imagesc(fR);
