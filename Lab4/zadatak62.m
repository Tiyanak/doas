pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img1, map1] = imread(strcat(pathSlika, 'uskoci1.png'));
[img2, map2] = imread(strcat(pathSlika, 'salona.png'));

img1 = rgb2gray(img1);

figure(1);
subplot(221)
imhist(img1);
subplot(223);
imhist(img2);

imgE1 = histeq(img1);
imgE2 = histeq(img2);

subplot(222);
imhist(imgE1);
subplot(224);
imhist(imgE2);

figure(2);
subplot(221)
imshow(img1);
subplot(223);
imshow(img2);

subplot(222);
imshow(imgE1);
subplot(224);
imshow(imgE2);


