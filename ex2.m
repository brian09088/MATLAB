X = imread('lena.jpg');
figure;
subplot(2,2,1); imshow(X);
[m, n] = size(X);

XX = single(X);
Gx = [diff(XX, 1, 2), zeros(n, 1)];
Gy = [diff(XX, 1, 1); zeros(1, m)];
G = sqrt(Gx.?2 + Gy.?2);
subplot(2,2,2); hist(G(:), 100);

Threshold = 20;
X(G < Threshold) = 255;

subplot(2,2,3); imshow(X);