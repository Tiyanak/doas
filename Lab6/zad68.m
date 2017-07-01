pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

img = imread(strcat(pathSlika, '4.2.07.tiff'));

img = im2double(img);
img = rgb2gray(img);

lap0 = fspecial('laplacian', 0);
lap3 = fspecial('laplacian', 0.3);
lap10 = fspecial('laplacian', 1);

im_0 = conv2(img, lap0, 'same');
im_3 = conv2(img, lap3, 'same');
im_10 = conv2(img, lap10, 'same');

figure(1);
subplot(131);
imshow(im_0);
subplot(132);
imshow(im_3);
subplot(133);
imshow(im_10);
