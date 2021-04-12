x=0:pi/100:2*pi;
y=sin(x);
xx=[x,fliplr(x)];
yy=[y,fliplr(-y)];
plot(xx,yy);

n=1;
while n<=3
for i = 1 : length(xx)
    hold off;
    plot(xx, yy);
    axis([0, 2*pi, -1.2, 1.2])
    hold on;
    plot(xx(i),yy(i),'o','MarkerFaceColor','r');
    pause(0.1)
end
n=n+1;
end


