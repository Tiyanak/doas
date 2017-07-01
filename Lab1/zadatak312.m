pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img, map] = imread(strcat(pathSlika, 'medalja_kamenita_vrata.png'));

figure(1);
imagesc(img);
colormap(gray);
figure(2);
img2 = double(img) / 255;
imshow(img2);
colormap(gray);

figure(3);
image(double(img)/4);
colormap(gray);

[img, map] = imread(strcat(pathSlika, 'uskoci1.png'));
img = rgb2gray(img);

img = double(img);

figure(4);
subplot(221);
imshow(img/max(img(:)));
colormap(gray);

img1 = sqrt(img);
img2 = log10(img);
img3 = img.^2;

subplot(222);
imshow(img1/max(img1(:)));
colormap(gray);
subplot(223);
imshow(img2/max(img2(:)));
colormap(gray);
subplot(224);
imshow(img3/max(img3(:)));
colormap(gray);


