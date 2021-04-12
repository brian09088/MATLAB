a=-4;b=-3;M=30;fa=exp(a)-sin(a);fb=exp(b)-sin(b);
delta=1e-6;epsilon=1e-6;
fa=exp(a)-sin(a);
fb=exp(b)-sin(b);
format long
for k=1:M
  c=(a+b)/2;
  fc=exp(c)-sin(c);
  if b-a<delta && abs(fc)<epsilon
     break
  end
  if (fc)*(fa)<0
      b=c;
      fb=fc;
  else
      a=c;
      fa=fc;
  end    
end
[k,c,fc]
format short