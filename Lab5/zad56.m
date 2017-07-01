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
img_noise = imnoise(img, 'gaussian', 0, 0.05);

H_otf = psf2otf(h_total_psf);

[x, y] = size(H_otf);

H_otf_inv = zeros(x, y);

K = 0.005;

for i = 1:x
    for j = 1:y
        if H_otf(i, j) > K
            H_otf_inv(i, j) = 1 / H_otf(i, j);
        end
    end
end

H_otf_inv = H_otf_inv .* ((H_otf .* H_otf) ./ ((H_otf .* H_otf) + K));

s_rest = conv2(im_deg, H_otf_inv, 'same');
sn_rest = conv2(img_deg_noise, H_otf_inv, 'same');
sg_rest = conv2(img_noise, H_otf_inv, 'same');

s_rest = imscale(s_rest);
sn_rest = imscale(sn_rest);
sg_rest = imscale(sg_rest);

figure(1);
subplot(321);
imagesc(im_deg);
subplot(322);
imagesc(s_rest);
subplot(323);
imagesc(img_deg_noise);
subplot(324);
imagesc(sn_rest);
subplot(325);
imagesc(img_noise);
subplot(326);
imagesc(sg_rest)
colormap(gray);

im_deg = im2double(im_deg);
img_deg_noise = im2double(img_deg_noise);
img_noise = im2double(img_noise);

mean2((img - s_rest) .^ 2)
mean2((img - sn_rest) .^ 2)
mean2((img - sg_rest) .^ 2)
mean2((img - img_deg_noise) .^ 2)
mean2((img - img_noise) .^ 2)
mean2((img - im_deg) .^ 2)

akf_img = akf(img, 30);
akf_img_deg = akf(s_rest, 30);
akf_img_noise = akf(sg_rest, 30);
akf_img_deg_noise = akf(sn_rest, 30);

figure(2);
subplot(221);
imagesc(akf_img);
subplot(222);
imagesc(akf_img_deg);
subplot(223);
imagesc(akf_img_noise);
subplot(224);
imagesc(akf_img_deg_noise);

img_wiener = wiener2(img_deg_noise);

figure(3);
subplot(121);
imagesc(img_deg_noise);
subplot(122);imagesc(img_wiener);
colormap(gray);

mean2((img - img_wiener) .^ 2)
mean2((img - img_deg_noise) .^ 2)



