pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

img = imread(strcat(pathSlika, '4.2.04.tiff'));
img = im2double(img);

figure(1);
img1 = img(2:end, 2:end);
img2 = img(1:end-1, 1:end-1);
hist3([img1(:), img2(:)])

figure(2);
img3 = img(6:end, 6:end);
img4 = img(1:end-5, 1:end-5);
hist3([img3(:), img4(:)])


img = imread(strcat(pathSlika, 'saturn.tif'));
img = im2double(img);

figure(1);
img1 = img(2:end, 2:end);
img2 = img(1:end-1, 1:end-1);
hist3([img1(:), img2(:)])

figure(2);
img3 = img(11:end, 11:end);
img4 = img(1:end-10, 1:end-10);
hist3([img3(:), img4(:)])

figure(3);
img5 = img(21:end, 16:end);
img6 = img(1:end-20, 1:end-15);
hist3([img5(:), img6(:)])