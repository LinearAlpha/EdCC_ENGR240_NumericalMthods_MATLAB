function x = GaussPivotLarge(a, b)

ab = [a, b];
[R, C] = size(ab);
for j = 1:R - 1
    %Pivoting section starts
    if ab(j, j) == 0
        for k = j + 1:R
            if ab(k, j) ~= 0
                abTemp = ab(j, :);
                ab(j, :) = ab(k, :);
                ab(k, :) = abTemp;
                break
            end
        end
    end
    %Pivoting section ends
    for ii = j + 1:R
        ab(ii, j:C) = ab(ii, j:C) - ab(ii, j) / ab(j, j) * ab(j, j:C);
    end
end
x = zeros(R,1);
x(R) = ab(R, C) / ab(R, R);
for ii = R - 1:-1:1
    x(ii) = (ab(ii, C) - ab(ii, ii + 1:R) * x(ii + 1:R)) / ab(ii,ii);
end
