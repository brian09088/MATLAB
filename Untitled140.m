theta1 = 0 : 0.01 : 2*pi; theta2 = 0 : 0.05 : 6*pi;
r1 = 3; x1 = r1*cos(theta1); y1 = r1*sin(theta1);
r2 = 1; x2 = r2*cos(theta1); y2 = r2*sin(theta1);
R = r1 + 2*r2;
n = length(theta2) ;
for i = 1 : n
center = (r1+r2)*[cos(theta2(i)), sin(theta2(i))];
plot(x1, y1);
hold on;
plot(x2+center(1), y2+center(2), 'r');
axis([-R, R, -R, R]); axis square;
hold off;
pause(0.01);
end