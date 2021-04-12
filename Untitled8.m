a=1;
b=5;
t=linspace(0,2*pi,100);
x=a*cos(t);
y=b*sin(t);
plot(x,y);
hold on;
c=b*cos(t);
d=a*sin(t);
plot(c,d);
hold on;
r=5;
u=r*cos(t);
v=r*sin(t);
plot(u,v);
axis equal