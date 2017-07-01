pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img1, map] = imread(strcat(pathSlika, 'knjiga_ssa.png'));
[img2, map] = imread(strcat(pathSlika, 'misal_1483.png'));

img1=imresize(img1,[600 600],'bilinear');
img2=imresize(img2,[600 600], 'bilinear');

subplot(221)
img3 = double(img1) + double(img2);
imagesc(img3);
colormap(gray);

subplot(222)
img4 = double(img1) - double(img2);
imagesc(img4);
colormap(gray);

subplot(223)
img5 = double(img1) * double(img2);
imagesc(img5);
colormap(gray);

subplot(224)
img6 = double(img1) / double(img2);
imagesc(img6);
colormap(gray);

%RGB

[img1, map1] = imread(strcat(pathSlika, 'split.jpg'));
[img2, map2] = imread(strcat(pathSlika, 'klis1.jpg'));

img1=imresize(img1,[600 600],'bilinear');
img2=imresize(img2,[600 600], 'bilinear');
whos

subplot(221)
img3 = double(img1(:, :, :)) + double(img2(:, :, :));
imagesc(img3/max(img3(:)));

subplot(222)
img4 = abs(double(img1(:, :, :)) - double(img2(:, :, :)));
imagesc(img4/max(img4(:)));

subplot(223)
img5 = double(img1(:, :, :)) .* double(img2(:, :, :));
imagesc(img5/max(img5(:)));

subplot(224)
img6 = double(img1(:, :, :)) ./ double(img2(:, :, :));
imagesc(img6/max(img6(:)));