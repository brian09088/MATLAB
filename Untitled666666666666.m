x = [0 0];

y= [1 0];

z = [1/2 -sqrt(3)/2];

m = 6;

axis square;

axis off;

koch(x,y,m)

koch(y,z,m)

koch(z,x,m)







function koch(p,q,n)

        if n == 0, plot([p(1),q(1)],[p(2),q(2)]);

                hold on;

        else

                d = q - p;

                a = p + d/3;

                b = q - d/3;

                c = (p+q)/2 + [-d(2) d(1)]/(2*sqrt(3));

                koch(p,a,n-1); koch(a,c,n-1);

                koch(c,b,n-1); koch(b,q,n-1);

        end

end

