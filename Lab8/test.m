pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

img1 = imread(strcat(pathSlika, 'auto1.tiff'));
img2 = imread(strcat(pathSlika, 'auto2.tiff'));
img3 = imread(strcat(pathSlika, 'blood1.tif'));

% original slike
img1 = double(img1);
img2 = double(img2);
img3 = double(img3);

% rubovi nad originalima
ens1 = edge(img1, 'sobel');
ens2 = edge(img2, 'sobel');
ens3 = edge(img3, 'sobel');

enc1 = edge(img1, 'canny');
enc2 = edge(img2, 'canny');
enc3 = edge(img3, 'canny');

% jezgre
jezgra1 = [1 1 1; 1 1 1; 1 1 1] .* (1/9);
jezgra2 = ones(17) * (1/(17*17));

% zamucivanje
img11 = conv2(img1, jezgra1, 'same');
img21 = conv2(img2, jezgra1, 'same');
img31 = conv2(img3, jezgra1, 'same');

img12 = conv2(img1, jezgra2, 'same');
img22 = conv2(img2, jezgra2, 'same');
img32 = conv2(img3, jezgra2, 'same');

% rubovi nad mutnima
es11 = edge(img11, 'sobel');
es21 = edge(img21, 'sobel');
es31 = edge(img31, 'sobel');
es12 = edge(img12, 'sobel');
es22 = edge(img22, 'sobel');
es32 = edge(img32, 'sobel');

ec11 = edge(img11, 'canny');
ec21 = edge(img21, 'canny');
ec31 = edge(img31, 'canny');
ec12 = edge(img12, 'canny');
ec22 = edge(img22, 'canny');
ec32 = edge(img32, 'canny');

sum(abs(es11(:) - ens1(:)))
sum(abs(es21(:) - ens2(:)))
sum(abs(es31(:) - ens3(:)))
sum(abs(es12(:) - ens1(:)))
sum(abs(es22(:) - ens2(:)))
sum(abs(es32(:) - ens3(:)))
sum(abs(ec11(:) - enc1(:)))
sum(abs(ec21(:) - enc2(:)))
sum(abs(ec31(:) - enc3(:)))
sum(abs(ec12(:) - enc1(:)))
sum(abs(ec22(:) - enc2(:)))
sum(abs(ec32(:) - enc3(:)))

figure(1)
rubovi = {es11, es21, es31, es12, es22, es32, ec11, ec21, ec31, ec12, ec22, ec32}
for i=1:12
    subplot(4, 3, i)
    imagesc(rubovi{i})
end
colormap(gray);
    
    