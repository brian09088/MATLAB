ans2 = 0 
for x = (1:2:51) ;
    ans2 = ans2 + [ x / (  prod( 1:(1+x) )  )] 
end
clear x
clc