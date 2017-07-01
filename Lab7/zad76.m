pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img, map] = imread(strcat(pathSlika, 'texture.tif'));

% 1)

figure(1);
imshow(img);

% 2)

p = [2, 3];
fun = @(x) inertia(x, p);

znacajke = nlfilter(img, [12 12], fun);

[idx, c] = kmeans(im2double(znacajke(:)), 5, 'start', [0.5:5]'/5, 'onlinephase', 'off');

figure(2);
subplot(121);
imagesc(znacajke);
subplot(122);
imagesc(reshape(idx, size(img)));
colormap(gray);

% 3)

fun1 = @(x) energy1(x, p);

znacajke_en = nlfilter(im2double(img), [12 12], fun1);
[idx, c] = kmeans(im2double(znacajke_en(:)), 5, 'start', [0.5:5]'/5, 'onlinephase', 'off');

figure(3);
subplot(121);
imagesc(znacajke_en);
subplot(122);
imagesc(reshape(idx, size(img)));
colormap(gray);
