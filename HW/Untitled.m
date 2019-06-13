clear, clc
a = 0; b = 1.5;
dydx = @(w) w;
dwdx = @ (w, y, x) -2 * w - 2 * y;
sy = @ (x) exp(-x) .* (-cos(x) - 4 * sin(x) / 5);
w(1) = 0.2; y(1) = -1;
x(1) = a;
h = 0.5;
N = round((b - a) / h);
for i = 1:N
    x(i + 1) = x(i) + h;
    y(i + 1) = y(i) + dydx(w(i)) * h;
    w(i + 1) = w(i) + dwdx(w(i), y(i), w(i)) * h;
end
x 
y
w
error = sy(x) - y
