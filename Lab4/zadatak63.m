pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img1, map1] = imread(strcat(pathSlika, 'klis2.png'));

img1 = double(img1)

imgEQ = histeq(img1);
imgMEQ = imscale(img1);
imgMEQ = norminv(imgMEQ, 0, 10);

figure(1);
imshow(imgMEQ);

[img2, map2] = imread(strcat(pathSlika, 'auto.tif'));

img2 = double(img2)

imgEQ = histeq(img2);
imgMEQ = imscale(imgEQ);
imgMEQ = norminv(imgMEQ, 0, 10);

figure(2);
imshow(imgMEQ);

