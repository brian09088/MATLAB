for i = 1 : m
for j = 1 : n
if i == 1, a = 0; else a = 1; end
if i == m, b = 0; else b = 1; end
if j == 1, c = 0; else c = 1; end
if j == n, d = 0; else d = 1; end
A = X(i-a:i+b, j-c:j+d);
sA = sort(A(:));
LsA = length(sA);
if mod(LsA,2) == 1,
X(i,j) = sA((LsA-1)/2+1);
else
X(i,j) = sA(LsA/2+1);
end
end
end
subplot(2,2,2); imshow(X);