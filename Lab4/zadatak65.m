pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

% [img1, map1] = imread(strcat(pathSlika, 'slika1.tiff'));

maska = ones(5);
maska = maska / sum(maska(:));
lap = fspecial('laplacian', 0.2);
sobel = fspecial('sobel');

% imgM1 = conv2(img1, maska, 'same');

% imgL1 = conv2(imgM1, lap, 'same');
% imgS1 = conv2(imgM1, sobel, 'same');

% figure(1);
% subplot(141);
% imagesc(img1);
% subplot(142);
% imagesc(imgM1);
% subplot(143);
% imagesc(imgM1+imgS1);
% subplot(144);
% imagesc(imgM1+imgL1);
% colormap(gray);

% 2.

[img2, map2] = imread(strcat(pathSlika, 'medalja_dubrovnik.png'));

img2 = double(img2);

imgM2 = conv2(img2, maska, 'same');

% figure(2);
% subplot(131);
% imagesc(img2);
% subplot(132);
% imagesc(imgM2);
% subplot(133);
% imagesc(3 .* img2 - imgM2);
% colormap(gray);

% 3. zad

imgS2 = conv2(imgM2, sobel, 'same');

figure(3);
subplot(131);
imagesc(img2);
subplot(132);
imagesc(imgM2);
subplot(133);
imagesc(2 .* imgM2 + 3 .* imgS2);
colormap(gray);

[img3, map3] = imread(strcat(pathSlika, '5.1.09.tiff'))
[img4, map4] = imread(strcat(pathSlika, '5.1.09.tiff'))

img3 = double(img3);
img4 = double(img4);

img3M = conv2(img3, maska, 'same');
img3L = conv2(img3M, lap, 'same');
img3S = conv2(img3M, sobel, 'same');

figure(4);
subplot(231);
imagesc(img3);
subplot(232);
imagesc(img3M);
subplot(233);
imagesc(2 .* img3M + 3 .* img3S);
subplot(234);
imagesc(img4);
subplot(235);
imagesc(img3M);
subplot(236);
imagesc(2 .* img3M + 3 .* img3L);
colormap(gray)

% 5. zad

maska1 = [1 1 1, 1 8 1, 1 1 1];
maska2 = [0 -1 0, -1, 4, -1, 0, -1, 0];

lap1 = fspecial('laplacian', 0);
lap2 = fspecial('laplacian', 0.5);

img5M = conv2(img3, maska1, 'same');
img6M = conv2(img3, maska2, 'same');

img5L1 = conv2(img5M, lap1, 'same');
img5L2 = conv2(img5M, lap2, 'same');
img5L3 = conv2(img6M, lap1, 'same');
img5L4 = conv2(img6M, lap2, 'same');

figure(5);
subplot(221);
imagesc(2 .* img5M + 3 .* img5L1);
subplot(222);
imagesc(2 .* img5M + 3 .* img5L2);
subplot(223);
imagesc(2 .* img6M + 3 .* img5L3);
subplot(224);
imagesc(2 .* img6M + 3 .* img5L4);
colormap(gray);

% zad 6.

[img3, map3] = imread(strcat(pathSlika, 'knjiga_ssa.png'))

img3 = double(img3);

img3M = conv2(img3, maska, 'same');

img3L = conv2(img3M, lap, 'same');
img3S = conv2(img3M, sobel, 'same');

figure(4);
subplot(231);
imagesc(img3);
subplot(232);
imagesc(img3M);
subplot(233);
imagesc(2 .* img3M + 3 .* img3S);
subplot(234);
imagesc(img3);
subplot(235);
imagesc(img3M);
subplot(236);
imagesc(2 .* img3M + 3 .* img3L);
colormap(gray)

