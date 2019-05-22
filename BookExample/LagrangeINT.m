function Yint = LagrangeINT(x,y,Xint)
% LagrangeINT fits a Lagrange polynomial to a set of given points and
% uses the polynomial to determine the interpolated value of a point.
% Input variables:
% x A vector with the x coordinates of the given points.
% y A vector with the y coordinates of the given points.
% Xint The x coordinate of the point at which y is to be interpolated.
% Output variable:
% Yint The interpolated value of Xint.

n = length(x);
for ii = 1:n
    L(ii) = 1;
    for j = 1:n
        if j ~= ii
            L(ii) = L(ii) * (Xint - x(j)) / (x(ii) - x(j));
        end
    end
end
Yint = sum(y .* L);
