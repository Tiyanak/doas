pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';
pathFunkcija = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\funkcije\';

[img, map] = imread(strcat(pathSlika, '7.1.07.tiff'));

img = double(img);

imgT = blkproc(img,[8 8],'dct2');

M = mask('k', 5); % M je maska za restrikciju
imgR = blkproc(imgT, [8 8], 'x.*P1', M);

imgO = blkproc(imgR, [8 8], 'idct2');

figure(1);
imagesc(imgO);
colormap(gray);

% 3.

[rows columns] = size(img);
squaredErrorImage = (img - imgO) .^ 2;
mse = sqrt(sum(sum(squaredErrorImage)) / (rows * columns));
mse

figure(2);
for a = 1:16
    b = 'k';
    if a > 8
        b = 't';
    end
    
    M = mask(b, mod(a-1, 8)+1);
    
    imgR = blkproc(imgT, [8 8], 'x.*P1', M);
    imgO = blkproc(imgR, [8 8], 'idct2');
    
    subplot(4, 4, a);
    imagesc(imgO);
    
    squaredErrorImage = (img - imgO) .^ 2;
    mse = sqrt(sum(sum(squaredErrorImage)) / (rows * columns));
    
    title(mse);
end
colormap(gray)
    
figure(3);
for a = 1:16
    b = 'k';
    if a > 8
        b = 't';
    end
    
    M = mask(b, mod(a-1, 8)+1);
    
    imgR = blkproc(imgT, [8 8], 'x.*P1', M);
    k = myQuant(imgR, 4);
    imgO = blkproc(k, [8 8], 'idct2');
    
    subplot(4, 4, a);
    imagesc(imgO);
    
    squaredErrorImage = (img - imgO) .^ 2;
    mse = sqrt(sum(sum(squaredErrorImage)) / (rows * columns));
    
    title(mse);
end
colormap(gray)
