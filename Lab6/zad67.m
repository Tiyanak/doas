pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

img = imread(strcat(pathSlika, '4.2.07.tiff'));

img = im2double(img);
img = rgb2gray(img);

h45 = [1 1 0; 1 0 -1; 0 -1 -1];
h135 = [0 1 1; -1 0 1; -1 -1 0];

im_45 = conv2(img, h45, 'same');
im_135 = conv2(img, h135, 'same');

figure(1);
subplot(121);
imagesc(im_45);
subplot(122);
imagesc(im_135);
colormap(gray);

im_45_ft = fft2(im_45);
im_135_ft = fft2(im_135);

im_45_ft = fftshift(im_45_ft);
im_135_ft = fftshift(im_135_ft);

A45 = 20 * log10(abs(im_45_ft));
f45 = angle(im_45_ft);

A135 = 20 * log10(abs(im_135_ft));
f135 = angle(im_135_ft);

figure(2);
subplot(221);
imagesc(A45);
subplot(222);
imagesc(f45);
subplot(223);
imagesc(A135);
subplot(224);
imagesc(f135);
colormap(gray);

