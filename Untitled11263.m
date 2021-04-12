x=2;M=10;delta = 1e-3; epsilon = 1e-3;fx = x^3-3*x-1
format long
for n = 1 : M
xold = x;
x = x - (x^3-3*x-1)/(3*x^2-3)
fx = x^3-3*x-1;
if abs(xold-x) < delta && abs(fx) < epsilon
    break
    end
    end
[n, x, fx]
format short