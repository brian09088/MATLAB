A=9*ones(5);
for i = 1:5
    for j = 1:5
        if i==j
           A(i,j)=1;
        elseif abs(i-j)==1
           A(i,j)=2;
        end
    end
end
