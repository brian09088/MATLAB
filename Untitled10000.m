f = @(x) 3*x^2*exp(x^3);
F = @(x) exp(x^3);
Iexact = F(1) - F(0);
fprintf(' n midpoint trapezoidal\n');
N = 8;
for i = 1 : N
  n = 2^i;
  It(i) = trapezoidal_rule(f,0,1,n);
  Im(i) = midpoint_rule(f,0,1,n);
  fprintf('%4d %.16f %.16f\n', n, Im(i), It(i));
end
fprintf(' n midpoint trapezoidal\n');
for i = 1 : N
  n = 2^i;
  et(i) = abs(Iexact-It(i));
  em(i) = abs(Iexact-Im(i));
  fprintf('%4d %.16f %.16f\n', n, em(i), et(i));
end

function I = midpoint_rule(f, a, b, n)
   h = (b-a)/n;
   s=0;
   for i = 0 : n-1
   s =s + f((a+h/2)+i*h);
   end
   I= h*s;
end