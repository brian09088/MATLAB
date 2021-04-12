function f=Factorial1(n)
if mod(n,1)~=0 || n<0
     f = NaN ;
     return
end
    if n==0
     f=1;
    else
     f=n*Factorial(n-1);
    end
end