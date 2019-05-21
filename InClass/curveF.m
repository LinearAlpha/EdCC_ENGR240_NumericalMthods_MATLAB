function [a1, a0] = curveF(A, n)
x = sum(A(1,1:n));
y = sum(A(2,1:n));
xy = sum(A(1,1:n) .* A(2,1:n));
xx = sum(A(1, 1:n).^2);
a1 = (n * xy - x * y) ./ (n * xx - (x)^2);
a0 = (xx * y - xy * x) ./ (n * xx - (x)^2);
