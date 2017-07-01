pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

img = imread(strcat(pathSlika, 'salona.png'));

img = im2double(img);

img = imresize(img, [256 256]);

fmean = @(x) mean(x);
fmin = @(x) min(x);
fmax = @(x) max(x);
fstd = @(x) std(x);

imgMean = colfilt(img, [8 8], 'sliding', fmean);
imgMin = colfilt(img, [8 8], 'sliding', fmin);
imgMax = colfilt(img, [8 8], 'sliding', fmax);
imgStd = colfilt(img, [8 8], 'sliding', fstd);

subplot(221);
imagesc(imgMean);
subplot(222);
imagesc(imgMin);
subplot(223);
imagesc(imgMax);
subplot(224);
imagesc(imgStd);
colormap(gray);
