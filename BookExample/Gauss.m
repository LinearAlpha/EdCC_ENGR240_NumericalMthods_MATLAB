function x = Gauss(a, b)
%The function solves a system of linear equations [a][x] = b using the Gauss
%elimination method
%input variables:
%a      The matrix of coeffients.
%b      Right-hand-side column vector of constants.
%Out put:
%x      A column vector with the solution

ab = [a, b];
[R, C] = size(ab);
for j = 1:R - 1
    for ii = j + 1:R
        ab(ii, j:C) = ab(ii, j:C) - ab(ii, j) / ab(j, j) * ab(j, j:C);
    end
end
x = zeros(R,1);
x(R) = ab(R, C) / ab(R, R);
clear ii;
for ii = R - 1:-1:1
    x(ii) = (ab(ii,C) - ab(ii, ii + 1:R) * x(ii + 1:R)) / ab(ii,ii);
end
