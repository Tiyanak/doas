pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

img = imread(strcat(pathSlika, 'salona.png'));

img = im2double(img);
img = imresize(img, [256 256]);

fen = @(x) energy(x);
fet = @(x) entropy(x);

imgEnergy = colfilt(img, [5 5], 'sliding', fen);
imgEntropy = colfilt(img, [5 5], 'sliding', fet);

subplot(121);
imagesc(imgEnergy);
subplot(122);
imagesc(imgEntropy);
colormap(gray);

