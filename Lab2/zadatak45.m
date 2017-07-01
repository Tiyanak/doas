pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img, map] = imread(strcat(pathSlika, 'AB2.tiff'));

imgO = img(1:40:end, :, :);
imshowpair(img, imgO, 'montage');

% 4.5.2.

[img, map] = imread(strcat(pathSlika, 'hsokol.png'));

imgO = img(1:5:end, 1:5:end, :);
figure(2)
subplot(121)
imshow(img)
subplot(122)
imshow(imgO)

% 4.5.3.

[img1, map1] = imread(strcat(pathSlika, 'testpat_circ.tiff'));
[img2, map2] = imread(strcat(pathSlika, 'asinh2.tiff'));

figure(3)

img1O = img1(1:3:end, 1:3:end, :)
img2O = img2(1:3:end, 1:3:end, :)
img1OO = img1(1:7:end, 1:7:end, :)
img2OO = img2(1:7:end, 1:7:end, :)

subplot(231)
imshow(img1)
subplot(234)
imshow(img2)

subplot(232)
imshow(img1O)
subplot(235)
imshow(img2O)

subplot(233)
imshow(img1OO)
subplot(236)
imshow(img2OO)