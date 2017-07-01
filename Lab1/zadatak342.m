pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img1, map] = imread(strcat(pathSlika, 'hsokol.png'));
[img2, map] = imread(strcat(pathSlika, 'detalj.png'));
[img3, map] = imread(strcat(pathSlika, 'prof_baltazar.png'))

img1G = imadjust(img1, [], [], 0.2);
img2G = imadjust(img2, [], [], 0.6);
img3G = imadjust(img3, [], [], 3);

figure(1)
subplot(311);
imshowpair(img1, img1G, 'montage');
subplot(312);
imshowpair(img2, img2G, 'montage');
subplot(313);
imshowpair(img3, img3G, 'montage');

[img, map] = imread(strcat(pathSlika, 'psgamma.tif'));

img = ind2rgb(img, map);

imgG = imadjust(img, [], [], [0.8, 0.8, 0.8]);

figure('Color', [0 0 0]);
imshow(imgG);

imgB = imread(strcat(pathSlika, 'klis1.jpg'));
whos
imgB = rgb2gray(imgB);

H = fspecial('average', 15);
imgBM = filter2(H, imgB);


imgB2 = double(imgB(:, :)) .* 3;
imgBM = double(imgBM(:, :)) .* 2;

imgR = double(imgB2) - double(imgBM);

imagesc(imgR)




