X = imread('einstein.png');
figure; subplot(1,2,1); imshow(X);
[m, n] = size(X);
Ma = [1,2,1;2,4,2;1,2,1];
Ma = ones(3); Ma = uint8(Ma);
for i = 1 : m
for j = 1 : n
if i == 1, a = 0; else a = 1; end
if i == m, b = 0; else b = 1; end
if j == 1, c = 0; else c = 1; end
if j == n, d = 0; else d = 1; end
A = X(i-a:i+b, j-c:j+d);
M = Ma(2-a:2+b, 2-c:2+d);
AM = (A.*M)/sum(M(:));
X(i,j) = sum(AM(:));
end
end
subplot(1,2,2); imshow(X);