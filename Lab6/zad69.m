pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

img = imread(strcat(pathSlika, 'texture.tif'));

img = im2double(img);

p1 = [2, 2];
p2 = [4, 4];
p3 = [3, 5];

okolina = [15, 15];

fun_in1 = @(x) inertia(x, p1);
fun_ent1 = @(x) entropy(x, p1);
fun_ene1 = @(x) energy(x, p1);
fun_cov1 = @(x) covariance(x, p1);
fun_abs1 = @(x) absolute(x, p1);

fun_in2 = @(x) inertia(x, p2);
fun_ent2 = @(x) entropy(x, p2);
fun_ene2 = @(x) energy(x, p2);
fun_cov2 = @(x) covariance(x, p2);
fun_abs2 = @(x) absolute(x, p2);

fun_in3 = @(x) inertia(x, p3);
fun_ent3 = @(x) entropy(x, p3);
fun_ene3 = @(x) energy(x, p3);
fun_cov3 = @(x) covariance(x, p3);
fun_abs3 = @(x) absolute(x, p3);

% im_in1 = nlfilter(img, okolina, fun_in1);
% im_ent1 = nlfilter(img, okolina, fun_ent1);
% im_ene1 = nlfilter(img, okolina, fun_ene1);
% im_cov1 = nlfilter(img, okolina, fun_cov1);
% im_abs1 = nlfilter(img, okolina, fun_abs1);
% 
% im_in2 = nlfilter(img, okolina, fun_in2);
% im_ent2 = nlfilter(img, okolina, fun_ent2);
% im_ene2 = nlfilter(img, okolina, fun_ene2);
% im_cov2 = nlfilter(img, okolina, fun_cov2);
% im_abs2 = nlfilter(img, okolina, fun_abs2);
% 
% im_in3 = nlfilter(img, okolina, fun_in3);
% im_ent3 = nlfilter(img, okolina, fun_ent3);
% im_ene3 = nlfilter(img, okolina, fun_ene3);
% im_cov3 = nlfilter(img, okolina, fun_cov3);
% im_abs3 = nlfilter(img, okolina, fun_abs3);
% 
% figure(1);
% subplot(3, 5, 1);
% imagesc(im_in1);
% subplot(3, 5, 2);
% imagesc(im_ent1);
% subplot(3, 5, 3);
% imagesc(im_ene1);
% subplot(3, 5, 4);
% imagesc(im_cov1);
% subplot(3, 5, 5);
% imagesc(im_abs1);
% 
% subplot(3, 5, 6);
% imagesc(im_in2);
% subplot(3, 5, 7);
% imagesc(im_ent2);
% subplot(3, 5, 8);
% imagesc(im_ene2);
% subplot(3, 5, 9);
% imagesc(im_cov2);
% subplot(3, 5, 10);
% imagesc(im_abs2);
% 
% subplot(3, 5, 11);
% imagesc(im_in3);
% subplot(3, 5, 12);
% imagesc(im_ent3);
% subplot(3, 5, 13);
% imagesc(im_ene3);
% subplot(3, 5, 14);
% imagesc(im_cov3);
% subplot(3, 5, 15);
% imagesc(im_abs3);
% colormap(gray);

img1 = imread(strcat(pathSlika, 'tekstura_nebo.png'));
img2 = imread(strcat(pathSlika, 'tekstura_plast1.png'));

img1 = im2double(img1);
img2 = im2double(img2);

img1 = rgb2gray(img1);
img2 = rgb2gray(img2);

im1_cov = nlfilter(img1, okolina, fun_cov1);
im2_cov = nlfilter(img2, okolina, fun_cov1);

figure(2);
subplot(121);
imagesc(im1_cov);
subplot(122);
imagesc(im2_cov);
colormap(gray);

