A = 100; 
x = 0 : 0.1 : 2*pi;
y = A*sin(x); 

n = 60;
for i = 1 : n
   if i<=n/2
     y = y*0.9;
     stem(x,y);
     title(['diminishing...', num2str(i)])
   else
     y = y*(-1.1);
     stem(x,y);
     title(['oscillating...', num2str(i)])
end
axis([0, 2*pi, -A, A]);
pause(0.1);
end