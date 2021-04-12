theta1 = 0 : 0.01 : 2*pi;
r1 = 3;
x1 = r1*cos(theta1);
y1 = r1*sin(theta1);
r2 = 1;
x2 = r2*cos(theta1);
y2 = r2*sin(theta1);
R = r1 + 2*r2;
plot(x1,y1);
hold on
plot(4+x2,y2);
axis([-r,r,-r,r]);
