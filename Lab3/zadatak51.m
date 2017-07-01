pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img1, map1] = imread(strcat(pathSlika, 'klis2.png'));
[img2, map2] = imread(strcat(pathSlika, 'misal_1483.png'));

imgFT = fft2(img1);
imgFT = imgFT / prod(size(imgFT));
imgFT = fftshift(imgFT);

A = 20 * log10(abs(imgFT));
f = angle(imgFT);

imshowpair(A, f, 'montage');

imgFT = fft2(img2);
imgFT = imgFT / prod(size(imgFT));
imgFT = fftshift(imgFT);

A = 20 * log10(abs(imgFT));
f = angle(imgFT);

figure(2);
imshowpair(A, f, 'montage');