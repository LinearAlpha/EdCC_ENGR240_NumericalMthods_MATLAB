clear, clc
y = [100 80 60 40 20 0]
x = [0 2.02 2.86 3.50 4.04 4.51]
x = x.^2
n = size(x, 2)
Sx = sum(x)
Sy = sum(y)
Sxx = sum(x.^2)
Sxy = sum(x .* y)
tmp = n * Sxx - (Sx)^2
a1 = (n * Sxy - Sx * Sy) / tmp
sol = a1 * (-2)
