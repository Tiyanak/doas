pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

img = imread(strcat(pathSlika, 'salona.png'));

% PSF
h_atm_psf = fspecial('gaussian', 5, 1);
h_hp_psf = hor_pom(5);
h_vp_psf = ver_pom(5);

h_total_psf = conv2(conv2(h_atm_psf, h_hp_psf), h_vp_psf);

% degradiram sliku
im_deg = conv2(double(img), h_total_psf, 'same');

%obicna slika, degradirana slika i degradirana sa sumom na 0-1
img = imscale(img);
im_deg = imscale(im_deg);
img_deg_noise = imnoise(im_deg, 'gaussian', 0, 0.05);

H_otf = psf2otf(h_total_psf);

H_otf_inv = 1 ./ H_otf;

s_rest = conv2(im_deg, H_otf_inv, 'same');
sn_rest = conv2(img_deg_noise, H_otf_inv, 'same');

s_rest = imscale(s_rest);
sn_rest = imscale(sn_rest);

figure(1);
subplot(221);
imagesc(im_deg);
subplot(222);
imagesc(s_rest);
subplot(223);
imagesc(img_deg_noise);
subplot(224);
imagesc(sn_rest);
colormap(gray);

im_deg = im2double(im_deg);
img_deg_noise = im2double(img_deg_noise);

mean2((img - s_rest) .^ 2)
mean2((img - sn_rest) .^ 2)
mean2((img - img_deg_noise) .^ 2)

s_rest = myQuant(s_rest, 8);
sn_rest = myQuant(sn_rest, 8);

figure(2);
subplot(221);
imagesc(im_deg);
subplot(222);
imagesc(s_rest);
subplot(223);
imagesc(img_deg_noise);
subplot(224);
imagesc(sn_rest);
colormap(gray);

mean2((img - s_rest) .^ 2)
mean2((img - sn_rest) .^ 2)

