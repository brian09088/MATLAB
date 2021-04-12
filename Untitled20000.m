f = @(x,y) 2*x+y;
a = 2; b = 3; c = 0; d = 2;
nx = 5; ny = 10;
hx = (b-a)/nx; hy = (d-c)/ny;
I = 0;
for i = 0 : nx-1
   for j = 0 : ny-1
   xi = a + hx/2 + i*hx;
   yj = c + hy/2 + j*hy;
   I = I +f(xi,yj);
   end
end
g=hx*hy*I