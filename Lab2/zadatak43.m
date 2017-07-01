pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img, map] = imread(strcat(pathSlika, 'knjiga_ssa.png'));

imgdio = img(200:300, 100:200);

knjigaM = imresize(imgdio, 1/8, 'nearest', 0);
knjigaV = imresize(knjigaM, 8, 'nearest', 0);

size(knjigaV)

img(200:300, 100:200) = knjigaV(4:end, 4:end);

imshow(img)
