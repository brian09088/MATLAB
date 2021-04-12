clear all;close all;clc;
X=imread('scene.jpg');
figure;imshow(X);
X=rgb2gray(X);
figure;imshow(X);
[m,n]=size(X);
mid=30;
figure;
for k=1:4
    B=zeros(m,n);
    B(X>mid)=255;
    mid=mid+25;
    subplot(2,2,k);imshow(B);
end
    
