x = 1; M = 10; delta = 1e-3; epsilon = 1e-3;
format long
for n = 1 : M
xold = x;
%x = x - (x^2-2)/(2*x)
x = x/2 + 1/x;
fx = x^2 - 2;
if abs(xold-x) < delta && abs(fx) < epsilon
 end
end
[n, x, fx]
format short