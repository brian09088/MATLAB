theta1 = 0 : 0.01 : 2*pi; theta2 = 0 : 0.01 : 6*pi;
r1 = 3; x1 = r1*cos(theta1); y1 = r1*sin(theta1);
r2 = 1; x2 = r2*cos(theta1); y2 = r2*sin(theta1);
R = r1 + 2*r2;
n = length(theta2) ;
for i = 1 : n
center = (r1+r2)*[cos(theta2(i)), sin(theta2(i))];
plot(x1, y1);
hold on;
plot(x2+center(1), y2+center(2), 'r');
axis([-2*pi,6*pi, -R, R]); axis square;
hold off;
pause(0.0001);
end
a = 0 : 0.01 : 6*pi;
b = sin(a);
theta = 0 : 0.01 : 2*pi;
r1 = 0.1;
a1 = r1*cos(theta);
b1 = r1*sin(theta);

n = length(a);
for i = 1 : n
    plot(a(1:i), b(1:i), 'r')
    hold on ;
    plot(a(i)+x1, b(i)+y1);
    hold off ;
    axis([0, 6*pi, -R, R]);
    axis square
    pause(0.0001);
end






