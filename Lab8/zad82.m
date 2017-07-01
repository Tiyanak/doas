pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

% zadatak 3

img1 = imread(strcat(pathSlika, 'auto1.tiff'));
img2 = imread(strcat(pathSlika, 'slika1.tiff'));

R = korelacijaFull(img1, img2); 

figure(1);
mesh(R);

% zadatak 4

[num, idx] = max(R(:));
[x, y] = ind2sub(size(R), idx);

% zadatak 5

imgShape = size(img1);

figure(2);
imshow(img2);
rectangle('Position', [x y imgShape(2) imgShape(1)]);
colormap(gray);

% zadatak 6

img2 = imread(strcat(pathSlika, 'slika2.tiff'));
img3 = imread(strcat(pathSlika, 'slika3.tiff'));
img4 = imread(strcat(pathSlika, 'slika4.tiff'));

R2 = korelacijaFull(img1, img2);
R3 = korelacijaFull(img1, img3);
R4 = korelacijaFull(img1, img4);

[num2, idx2] = max(R2(:));
[x2, y2] = ind2sub(size(R2), idx2);
[num3, idx3] = max(R3(:));
[x3, y3] = ind2sub(size(R3), idx3);
[num4, idx4] = max(R4(:));
[x4, y4] = ind2sub(size(R4), idx4);

figure(3);
subplot(131);
imshow(img2);
rectangle('Position', [x2 y2 imgShape(2) imgShape(1)]);
subplot(132);
imshow(img3);
rectangle('Position', [x3 y3 imgShape(2) imgShape(1)]);
subplot(133);
imshow(img4);
rectangle('Position', [x4 y4 imgShape(2) imgShape(1)]);
colormap(gray);

% zadatak 8

img5 = imread(strcat(pathSlika, 'auto2.tiff'));

korak = 1; 
izlaz=zeros(360/korak+1,1);
fi=0:korak:360;
for i = 1:length(fi)
    izlaz(i) = korelacijaRot(img1, img5, fi(i));
end

figure(4);
plot(linspace(1, 361, 361), izlaz);
colormap(gray);







