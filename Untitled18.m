x = 0 : 0.05 : 6*pi;
y = sin(x);
theta = 0 : 0.01 : 2*pi;
r1 = 0.1;
x1 = r1*cos(theta);
y1 = r1*sin(theta);

n = length(x);
for i = 1 : n
    plot(x(1:i), y(1:i), 'r')
    hold on ;
    plot(x(i)+x1, y(i)+y1);
    hold off ;
    axis([0, 6*pi, -1, 1]);
    axis square
    pause(0.01);
end