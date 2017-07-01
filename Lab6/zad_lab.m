pathSlika = 'C:\Users\Igor Farszky\Desktop\FER\DOS\Labos\slike_za_vjezbe\';

img = imread(strcat(pathSlika, 'salona.png'));

img = im2double(img);

n = 10;
y = zeros([1, n])

figure(1);
for i=1:n
    subplot(4, 3, i);
    img1 = img(i+1:end, i+1:end);
    img2 = img(1:end-i, 1:end-i);
    N = hist3([img1(:), img2(:)])
    sum = 0
    for j=1:n
        y(i) = y(i) + N(j, j);
    end
end

figure(2);
x = linspace(1, n, 10);
plot(x, y)


