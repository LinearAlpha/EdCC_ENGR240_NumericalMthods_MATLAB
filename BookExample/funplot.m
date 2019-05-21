function xyout = funplot(Fun, a, b)
%funplot makes a plot of the function Fun which is passed in when funplot
%is called in the domain [a, b].
%Input arguments:
%Fun:   Function handle of the function to be plotted.
%a:     The first point of the domain.
%b:     The last point of the domain.
%Output arguments:
%xyout: The values of x and y at x = a, x = (a + b) / 2, and x = b
%       listed in a 3 by 2 mqtrix.

x = linspace(a, b, 100);
y = Fun(x);
xyout(1, 1) = a;
xyout(2, 1) = (a + b) / 2;
xyout(3, 1) = b;
xyout(1, 2) = y(1);
xyout(2, 2) = Fun((a + b) / 2);
xyout(3, 2) = y(100);
plot(x,y);
xlabel('x'), ylabel('y')
end

