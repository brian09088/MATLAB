f = @(x,y)exp(-(x^2+y^2))*cos(x^2+y^2) ;
a =0 ; b =2000 ; c =0 ; d =2000 ;
nx =200 ; ny =300 ;
hx = (b-a)/nx; hy = (d-c)/ny;
K= 0;
for i = 0 : nx-1
   for j = 0 : ny-1
   xi = a + hx/2 + i*hx;
   yj = c + hy/2 + j*hy;
   K= K+ f(xi,yj);
   end
end
I=hx*hy*K
