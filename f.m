clear all;
clc;
f=@(x) 2+sin(x);
f([0 2*pi] )

x=linspace(0,2*pi,10) ;
y=f(x);
figure; plot(x,y);



