x=-1:0.01:1;
y=-1:0.01:1;
[x,y]=meshgrid(x,y);
z=sqrt(x.^2+y.^2);
mesh(x,y,z)

n=50;
for i=1:n
    view(i*360/n,30);
    pause(0.1);
end
for i=1:n
    view(360,30+i);
    pause(0.1);
end