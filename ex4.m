X = imread('cameraman.tif');
figure; subplot(2,2,1); imshow(X);
[m, n] = size(X);
% add pepper-salt noise
noiselevel = 0.1; % 0 ~ 1
for i = 1 : m
for j = 1 : n
r = rand;
if r <= noiselevel
if r <= noiselevel/2
X(i,j) = 0;
else
X(i,j) = 255;
end
end
end
end


