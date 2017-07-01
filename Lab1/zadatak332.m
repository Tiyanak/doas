pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img1, map] = imread(strcat(pathSlika, 'angio0.tif'));
[img2, map] = imread(strcat(pathSlika, 'angio1.tif'));

img1=imresize(img1,[600 600],'bilinear');
img2=imresize(img2,[600 600], 'bilinear');

img4 = double(img1) - double(img2);
imagesc(img4);
colormap(gray);