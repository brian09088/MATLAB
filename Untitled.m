x=-2:0.1:2
k=length(x);
f=zeros(1,k);
for o=1:k
    if -2<=x(o)&&x(o)<=-1
       y(o)=x(o)+2;
    elseif -1<=x(o)&&x(o)<=1
       y(o)=(x(o))^2;
    elseif 1<=x(o)&&x(o)<=2
       y(o)=2-x(o);
    end 
end
plot (x,y)