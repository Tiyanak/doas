pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img, map] = imread(strcat(pathSlika, '4.2.07.tiff'));

img = rgb2gray(img);
img = im2double(img);

% 1)

rub1 = edge(img, 'sobel', 0.02);
rub2 = edge(img, 'sobel', 0.05);
rub3 = edge(img, 'sobel', 0.1);
rub4 = edge(img, 'sobel', 0.2);

figure(1);
subplot(221);
imshow(rub1);
subplot(222);
imshow(rub2);
subplot(223);
imshow(rub4);
subplot(224);
imshow(rub4);
colormap(gray);

% 2)

[rub_auto, thresh] = edge(img, 'Sobel');

thresh

figure(2);
imshow(rub_auto);
colormap(gray);

% 3)

rub_log = imnoise(im2double(img), 'gaussian', 0, 0.01);
rub_log = edge(rub_log, 'log', [], 4);

figure(3);
imshow(rub_log);
colormap(gray);

% 4)

rub1 = edge(img, 'canny', 0.02);
rub2 = edge(img, 'canny', 0.05);
rub3 = edge(img, 'canny', 0.1);
[rub4, thresh] = edge(img, 'canny');

figure(4);
subplot(221);
imshow(rub1);
subplot(222);
imshow(rub2);
subplot(223);
imshow(rub3);
subplot(224);
imshow(rub4);
thresh
colormap(gray);


