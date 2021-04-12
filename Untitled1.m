f= @(x) 3*x^2*exp(x^3);
F= @(x) exp(x^3);
a=0;
b=1;
n=4
I= trapezoidal_rule(f, a, b, n)
h=(b-a)/n;
s=0.5*(f(a)+f(b));
  for i=1:n-1
      x_i=a+i*h;
      s=s+f(a+i*h);
  end     
I=h*s;
