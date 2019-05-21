clear, clc
a = [2 -6 6;
    3 -7 13;
    -2 2 -11];
b = [2; -13; 21];
%create a matrix fot the multipliers
L = eye(size(a));
numrow = size(a, 1);
numcol = size(a, 2);
%creat [U] and [L]
for ii = 2:numrow
    %compute the first column pivot multipliers
    L(ii:numrow, ii - 1) = a(ii:numrow, ii - 1) / a(ii - 1, ii - 1);
    %multiyply the first row by each multiplier for first column
    p = a(ii - 1,:) .* L(ii:numrow, ii - 1);
    a(ii:numrow,:) = a(ii:numrow,:) - p;
end
U = a;
y = zeros(size(a, 1), 1);
tmp = ones(size(a));
clear ii
tmp2 = zeros(size(a));
for ii = 1:numrow
    tmp2(ii,1:numcol) = L(ii, 1:numcol) .* y(ii, 1:numcol);
    y(ii, 1) = (b(ii, 1) - tmp2(ii, 1:numcol)) / L(ii,ii);
    tmp(ii, ii) = 0
end
