pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img, map] = imread(strcat(pathSlika, 'klis2.png'));

img = imnoise(img, 'gaussian');
img = imnoise(img, 'salt & pepper');

figure(1);
imagesc(img);
colormap(gray)


[img1, map1] = imread(strcat(pathSlika, 'klis2.png'));
[img2, map2] = imread(strcat(pathSlika, 'klis2.png'));

img1 = imnoise(img1, 'gaussian');
img2 = imnoise(img2, 'salt & pepper');

img1M = medfilt2(img1, [5 5]);
img2M = medfilt2(img2, [5 5]);

maska = ones(5);
maska = maska / sum(maska);

img1F = conv2(img1, maska, 'same')
img2F = conv2(img2, maska, 'same')

figure(1);
subplot(231);
imagesc(img1);
subplot(232);
imagesc(img1M);
subplot(233);
imagesc(img1F);
subplot(234);
imagesc(img2);
subplot(235);
imagesc(img2M);
subplot(236);
imagesc(img2F);
colormap(gray)
