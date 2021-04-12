ans1 = 1 ;
for  x = (1:2:9) ; 
    ans1 = ans1 - [1 / (2^x)] + [1 / (2^(x+1))]
end
clear x
clc