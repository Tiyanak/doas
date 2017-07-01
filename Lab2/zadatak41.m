pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img1, map1] = imread(strcat(pathSlika, 'knjiga_ssa.png'));
[img2, map2] = imread(strcat(pathSlika, 'salona.png'));

imshowpair(img2, [myQuant(img2, 1), myQuant(img2, 2), myQuant(img2, 3), myQuant(img2, 4)
    , myQuant(img2, 5), myQuant(img2, 6), myQuant(img2, 7), myQuant(img2, 8)], 'montage')

