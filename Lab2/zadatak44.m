pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img, map] = imread(strcat(pathSlika, 'asinh1.tiff'));

H = fspecial('average', 3);
img = filter2(H, img);

for d = 1:10
    subplot(3, 4, d);
    imshow(img(1:d:end, 1:d:end, :))
end

[img2, map2] = imread(strcat(pathSlika, 'testpat1.tif'));
[img3, map3] = imread(strcat(pathSlika, 'testpat2.tif'));

figure(2)
subplot(121)
imshow(img2(1:4:end, 1:4:end, :))
subplot(122)
imshow(img3(1:4:end, 1:4:end, :))

figure(3)
img2 = filter2(H, img2);
img3 = filter2(H, img3);

subplot(121)
imshow(img2(1:4:end, 1:4:end, :))
subplot(122)
imshow(img3(1:4:end, 1:4:end, :))

[img4, map4] = imread(strcat(pathSlika, 'uzorak.tif'));

figure(4)
subplot(211)
imshow(img4(:, 1:3:end))
subplot(212)
imshow(img4(1:2:end, :))

[img2, map2] = imread(strcat(pathSlika, 'testpat1.tif'));
[img4, map4] = imread(strcat(pathSlika, 'uzorak.tif'));

img2 = imresize(img2, 1/4, 'nearest', 0);
img4 = imresize(img4, 1/4, 'nearest', 0);

figure(5)
subplot(211)
imshow(img2)
subplot(212)
imshow(img4)

[img5, map5] = imread(strcat(pathSlika, 'klis1.jpg'));
img5 = rgb2gray(img5)
figure(6)
imshow(img5(1:8:end, 1:8:end, :))
