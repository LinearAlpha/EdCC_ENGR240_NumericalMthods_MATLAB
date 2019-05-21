clear, clc
A = [100 80 60 40 20 0;
    0 2.02 2.86 3.50 4.04 4.51];
n = size(A,2);
x = sum(A(1,1:n));
y = sum(A(2,1:n));
xy = sum(A(1,1:n) .* A(2,1:n));
xx = sum(A(1, 1:n).^2);
a1 = (n * xy - x * y) / (n * xx - (x)^2);
a0 = (xx * y - xy * x) / (n * xx - (x)^2);
fprintf("p = %fT + %f\n", a1, a0);
