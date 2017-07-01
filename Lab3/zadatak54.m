pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';
pathFunkcija = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\funkcije\';

[img1, map1] = imread(strcat(pathSlika, 'klis2.png'));
[img2, map2] = imread(strcat(pathSlika, 'teksture.png'));
img2 = rgb2gray(img2);

imgCT1 = dct2(img1);
imgCT2 = dct2(img2);

imgICT1 = idct2(img1);
imgICT2 = idct2(img2);

a1 = 20 * log10(abs(imgCT1));
a2 = 20 * log10(abs(imgCT2));
ai1 = 20 * log10(abs(imgICT1));
ai2 = 20 * log10(abs(imgICT2));

figure(1);
subplot(221);
imagesc(a1);
subplot(222);
imagesc(a2);
subplot(223);
imagesc(ai1);
subplot(224);
imagesc(ai2);
colormap(gray)





