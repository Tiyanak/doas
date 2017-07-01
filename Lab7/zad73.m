pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

img = imread(strcat(pathSlika, 'blood1.tif'));

img = im2double(img);

% 1)

figure(1);
subplot(121);
imhist(img);
subplot(122);
grayslice(img, 0.5);
colormap(gray);

% 2)

figure(2);
subplot(131);
grayslice(img, 0.3);
subplot(132);
grayslice(img, 0.5);
subplot(133);
grayslice(img, 0.7);
colormap(gray);

% 3)

figure(3);
subplot(131);
imhist(img);
subplot(132);
grayslice(img, 0.5);
subplot(133);
grayslice(img, [0.5 0.75]);
colormap(gray);