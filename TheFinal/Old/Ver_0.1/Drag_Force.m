function [D] = Drag_Force(Cd, S, V, x)
% Author: Minpyo Kim
% Read density data from the "Densuty.xlsx" and calculate density of the air
% by the alttiude
% Input varilavle:
% Cd    Coefficint of drag
% S     Frotal area
% V     Velcotiy of the roket
% x     Alttiude
% Oupur variable:
% D     Density by Alttiude

rawData = xlsread('Density','A2:B86');
alt = rawData(:, 1);
row = rawData(:, 2);
clear rawData
den = NewtonsINT(alt, row, x);
q = 1 / 2 * den * V^2;
D = q * Cd * S;

function [Yint] = NewtonsINT(x, y, Xint)
n = length(x);
a(1) = y(1);
divDIF = zeros(n - 1, 1);
for ii = 1:n - 1
    divDIF(ii) = (y(ii + 1) - y(ii)) / (x(ii + 1) - x(ii));
end
for j = 2:n - 1
    for ii = 1:n - j
        divDIF(ii, j) = (divDIF(ii + 1, j -1) - divDIF(ii, j - 1)) / ...
            (x(j + ii) - x(ii));
    end
end
a = zeros(n);
for j = 2:n
    a(j) = divDIF(1, j - 1);
end
Yint = a(1);
xn = 1;
for k = 2:n
    xn = xn * (Xint - x(k - 1));
    Yint = Yint + a(k) * xn;
end
