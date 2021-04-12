x=-1;M=10;delta = 1e-3; epsilon = 1e-3;fx =exp(x)-cos(x)
format long
for n = 1 : M
    xold = x;
    x = x - (exp(x)-cos(x))/(exp(x)+sin(x));
    fx =exp(x)-cos(x);
    if abs(xold-x) < delta && abs(fx) < epsilon
        break
    end
end
[n, x, fx]
format short