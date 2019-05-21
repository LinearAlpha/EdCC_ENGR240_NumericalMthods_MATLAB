clear all,clc
%A.1
clear
x = 5.3; z = 7.8;
(x * z) / (x / z)^2;
A = ans + 14 * x^2 - 0.8 * z^22
clear ans
B = x^2 * z - z^2 * x + (x / z)^2 - (z / x)^(1/2)
%A.4
clear
x = linspace(9, 44, 15)
rv = 9:(44-9)/14:44
%A.5
clear
x = 14:-3:-10;
x = transpose(x)
%A.7
clear
A = [2.5:1:7.5;
    42:-3.4:25;
    15:-0.4:13;
    3:-1:-2]
clear B; clear C; clear D;
%A.8
%(a)
va = A(2,3:6)
vb = A(2:4,5)
%A.9
clear va; clear vb;
B = A([1, 2, 4],[1, 2, 4, 6])
C = A([2,4],[2,5,6])
%hold on
clear, close ,clc
x = (-pi:0.01:pi);
y = sin(x); z = tan(x);
plot(x, y)
hold on
plot(x, z)
plot(z, y)
%A.15
clear, close ,clc
x = -299.25:0.01:299.25;
y = 693.8 - 68.8 * cosh(x / 99.7);
plot(x, y)
grid on
axis([-350 350 0 700])
title("St. Louis Arch")
%A.16
clear, close ,clc
x  = (-15:0.1:15);
y = (0.5 .*  x.^3 - x.^2) ./ (x.^2 - x - 20);
fun = @ (x) x^2 - x - 20;
x0 = [-15 0]; x1 = [0 15]
tmp = fzero(fun, x0); tmp2 = fzero(fun, x1);
plot(x, y)
ylim ([-20 20])
xline(tmp);
xline(tmp2);
grid on
%hold on
%xlim auto, ylim auto
%pratics
% clear, close ,clc
% x = [1 9]
% y = [2 12]
% line(x, y, 'Color', 'red', 'LineStyle', '--')



