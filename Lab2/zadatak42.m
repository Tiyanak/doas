pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

[img, map] = imread(strcat(pathSlika, 'asinh1.tiff'));

images = [0 0 0 0 0 0 0 0 0 0]

for d = 1:10
    imgT = img(1:d:end, 1:d:end, :);
    subplot(3, 4, d)
    imshow(imgT)
end

