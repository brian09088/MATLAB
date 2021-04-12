x = 0 : 0.01 : 2*pi;
y = 10*sin(x);

n = 50;
for i = 1 : n
    noise= randn(1, length(y));
    plot(x, y+noise);
    pause(0.1);
end    