x = 0 : 0.01 : 2*pi;
y = 10*sin(x);

n = 50;
for i = 1 : n
    A = 5*rand;
    noise= A*randn(1, length(y));
    plot(x, y+A*noise);
    axis([0, 2*pi, -20, 20])
    title(['Noise level = ', num2str(A)])
    pause(0.1);
end