a = 0 ;
t = 1 ; 
for k = 1 : 2 : 51
    t = t*k*(k+1);
    a = a + k/t ;
end
clc