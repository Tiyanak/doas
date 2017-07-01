pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img1, map1] = imread(strcat(pathSlika, 'klis2.png'));
[img2, map2] = imread(strcat(pathSlika, 'knjiga_ssa.png'));
[img3, map3] = imread(strcat(pathSlika, 'medalja_dubrovnik.png'));

figure(1);
subplot(131);
imhist(img1);
subplot(132);
imhist(img2);
subplot(133);
imhist(img3);

