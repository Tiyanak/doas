pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

m1 = 0.25 .* [1 0 -1; 2 0 -2; 1 0 -1]
m2 = (1/3) .* [1 1 1; 0 0 0; -1 -1 -1]
m3 = [-1 -1 -1; -1 8 -1; -1 -1 -1]
m4 = [0 -1 0; -1 4 -1; 0 -1 0]

[img1, map] = imread(strcat(pathSlika, 'texture.tif'));
[img2, map] = imread(strcat(pathSlika, 'auto1.tiff'));
[img3, map] = imread(strcat(pathSlika, 'blood1.tif'));

img1C = conv2(img1, m1, 'valid');
img2C = conv2(img1, m2, 'valid');
img3C = conv2(img1, m3, 'valid');
img4C = conv2(img1, m4, 'valid');
img5C = conv2(img2, m1, 'valid');
img6C = conv2(img2, m2, 'valid');
img7C = conv2(img2, m3, 'valid');
img8C = conv2(img2, m4, 'valid');
img9C = conv2(img3, m1, 'valid');
img10C = conv2(img3, m2, 'valid');
img11C = conv2(img3, m3, 'valid');
img12C = conv2(img3, m4, 'valid');

figure(1)
subplot(3,4,1);
imshow(img1C);
subplot(3,4,2);
imshow(img2C);
subplot(3,4,3);
imshow(img3C);
subplot(3,4,4);
imshow(img4C);
subplot(3,4,5);
imshow(img5C);
subplot(3,4,6);
imshow(img6C);
subplot(3,4,7);
imshow(img7C);
subplot(3,4,8);
imshow(img8C);
subplot(3,4,9);
imshow(img9C);
subplot(3,4,10);
imshow(img10C);
subplot(3,4,11);
imshow(img11C);
subplot(3,4,12);
imshow(img12C);

ms = (1/16) .* [1 1 1 1; 1 1 1 1; 1 1 1 1; 1 1 1 1];

imgCS = conv2(img2, ms, 'valid');
figure(2)
imagesc(imgCS);
colormap(gray)

