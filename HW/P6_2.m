clear, clc
x = [1900 1950 1970 1980 1990 2000 2010]
y = [400 557 825 981 1135 1266 1370]
n = size(x, 2)
Sx = sum(x)
Y = log(y)
Sy = sum(Y)
Sxx = sum(x.^2)
Sxy = sum(x .* Y)
a1 = (n * Sxy - Sx * Sy) / (n * Sxx - (Sx)^2)
a0 = (Sxx * Sy - Sxy * Sx) / (n * Sxx - (Sx)^2)
b = exp(a0)
F = @ (x) b * exp(a1 * x)
sol = F(1985)
