pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

img = imread(strcat(pathSlika, 'klis1.jpg'));

% PSF
h_atm_psf = fspecial('gaussian', 5, 1);
h_hp_psf = hor_pom(5);
h_vp_psf = ver_pom(5);

% OTF
h_atm_otf = psf2otf(h_atm_psf);
h_hp_otf = psf2otf(h_hp_psf);
h_vp_otf = psf2otf(h_vp_psf);

figure(1);
subplot(231);
freqz2(h_atm_psf);
subplot(232);
freqz2(h_hp_psf);
subplot(233);
freqz2(h_vp_psf);
subplot(234);
freqz2(h_atm_otf);
subplot(235);
freqz2(h_hp_otf);
subplot(236);
freqz2(h_vp_otf);

h_total_psf = conv2(conv2(h_atm_psf, h_hp_psf), h_vp_psf);
h_total_otf = psf2otf(h_total_psf);

figure(2);
subplot(121);
freqz2(h_total_psf);
subplot(122);
freqz2(h_total_otf);

img = imread(strcat(pathSlika, 'salona.png'));

im_psf = conv2(img, h_total_psf);

figure(3);
imagesc(im_psf);
colormap(gray);

img = imread(strcat(pathSlika, 'klis1.jpg'));

r = conv2(img(:, :, 1), h_total_psf);
g = conv2(img(:,:,2), h_total_psf);
b = conv2(img(:, :, 3), h_total_psf);

r = imscale(r);
g = imscale(g);
b = imscale(b);

imgdeg = cat(3, r, g, b);

figure(4);
imagesc(imgdeg);





