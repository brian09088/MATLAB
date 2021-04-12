A=ones(6)
for i=1:6
   for j=1:6
       if i>1 && j>1
           A(i,j)=A(i-1,j)+A(i,j-1);
       end
   end   
end
A