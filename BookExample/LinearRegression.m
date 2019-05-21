function [a1, a0] = LinearRegression(x, y)
% LinearRegression calculates the coefficients al and aO of the linear
% equation y = al*x + aO that best fits n data points.
% Input variables:
% x     A vector with the coordinates x of the data points.
% y     A vector with the coordinates y of the data points.
% Output variables:
% al    The coefficient al.
% aO    The coefficient aO.

nx = length(x);
ny = length(y);
if nx ~= ny
    disp('ERROR: The number of elements in x must be the same as in y.')
    a1 = 'Error';
    a0 = 'Error';
else
    Sx = sum(x);
    Sy = sum(y);
    Sxy = sum(x .* y);
    Sxx = sum(x.^2);
    a1 = (nx * Sxy - Sx * Sy) / (nx * Sxx - Sx^2);
    a0 = (Sxx * Sy - Sxy * Sx) / (nx * Sxx - Sx^2);
end

