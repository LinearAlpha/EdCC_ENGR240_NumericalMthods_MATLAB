function dx = deriviative(x, y)
% dereivative calculates the derivative of a function that is given by a set
% of point. The derivative at the first and last points are calculated by
% using the forward and backward finite fifference formula, reprctive;y.
% The derivative at all the other points is calculated by the central
% finite difference formula.
% Input variales:
% x     A vector with the coordinates x of the data points.
% y     A vector with the cordinates y of the data points.
% Output Variables:
% dx    A vector with the value of the derivative at each point

n = length(x);
dx(1) = (y(2) - y(1)) / (x(2) - x(1));
for i = 2:n - 1
    dx(i) = (y(i + 1) - y(i - 1)) / (x(i + 1) - x(i - 1));
end
dx(n) = (y(n) - y(n - 1)) / (x(n) - x(i - 1));
