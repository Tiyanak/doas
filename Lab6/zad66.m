pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

img = imread(strcat(pathSlika, '4.2.07.tiff'));

img = im2double(img);
img = rgb2gray(img);

sobel_x = fspecial('sobel');
sobel_y = rot90(sobel_x);
prewitt_x = fspecial('prewitt');
prewitt_y = rot90(prewitt_x);

im_sob_x = conv2(img, sobel_x, 'same');
im_sob_y = conv2(img, sobel_y, 'same');
im_prew_x = conv2(img, prewitt_x, 'same');
im_prew_y = conv2(img, prewitt_y, 'same');

g_sob = sqrt(im_sob_x .* im_sob_x + im_sob_y .* im_sob_y);
g_prew = sqrt(im_prew_x .* im_prew_x + im_prew_y .* im_prew_y);

figure(1);
subplot(121);
imagesc(g_sob);
subplot(122);
imagesc(g_prew);
colormap(gray);

figure(2);
subplot(221);
imagesc(im_sob_x);
subplot(222);
imagesc(im_sob_y);
subplot(223);
imagesc(im_prew_x);
subplot(224);
imagesc(im_prew_y);
colormap(gray);