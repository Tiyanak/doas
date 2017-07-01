pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

img = imread(strcat(pathSlika, 'blood1.tif'));

[idx, c] = kmeans(im2double(img(:)), 3, 'start', [0.5:3]'/3, 'onlinephase', 'off');

c

figure(1);
imagesc(reshape(idx, size(img)));
colormap(gray);