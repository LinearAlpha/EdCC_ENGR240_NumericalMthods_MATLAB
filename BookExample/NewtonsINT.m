function Yint = NewtonsINT(x,y,Xint)
% NewtonsINT fits a Newtons polynomial to a set of given points and
% uses the polynomial to determines the interpolated value of a point.
% Input variables:
% x A vector with the x coordinates of the given points.
% y A vector with the y coordinates of the given points.
% Xint The x coordinate of the point to be interpolated.
% Output variable:
% Yint The interpolated value of Xint.

n = length(x);
a(1) = y(1);
for ii = 1:n - 1
    divDIF(ii,1) = (y(ii + 1) - y(ii)) / (x(ii + 1) - x(ii));
end
for j = 2:n - 1
    for ii = ii:n - j
        divDIF(ii, j) = (divDIF(ii + 1, j - 1) - divDIF(ii, j - 1)) / ...
            (x(j + ii) - x(ii));
    end
end
for j = 2:n
    a(j) = divDIF(1, j - 1);
end
Yint = a(1);
xn = 1;
for k = 2:n
    xn = xn * (Xint - x(k - 1));
    Yint = Yint + a(k) * xn;
end
