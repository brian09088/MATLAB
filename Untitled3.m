r=5;
c=[1 2];
t=linspace(0,2*pi,20);
x=c(1)+r*cos(t);
y=c(2)+r*sin(t);
plot(x,y);
hold on;
plot(c(1),c(2),'*')