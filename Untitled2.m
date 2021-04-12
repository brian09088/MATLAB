f= @(x) 3*x^2*exp(x^3);
F= @(x) exp(x^3);
I4=trapezoid_rule(f, 0, 1, 4);
I40=trapezoid_rule(f, 0, 1, 40);
I400=trapezoid_rule(f, 0, 1, 400);
Iexact = F(1)-f(0);
E4=abs(Iexact-I4)
E40=abs(Iexact-I40)
E400=abs(Iexact-I400)
format long
e=1+I400
format short
function I= trapezoidal_rule(f, a, b, n)
h=(b-a)/n;
s=0.5*(f(a)+f(b));
  for i=1:n-1
      x_i=a+i*h;
      s=s+f(a+i*h);
  end     
I=h*s;
end
