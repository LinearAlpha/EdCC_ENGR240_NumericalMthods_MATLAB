%Define our inout matrices
a = [2 4 6;
    3 5 1;
    3 -2 2];
b = [1; 8; -5];
%Compute the second column pivot multipliers
c = [a, b];
%create a matrix fot the multipliers
m = zeros(size(c));
numrow = size(c, 1);
for ii = 2:numrow
    %compute the first column pivot multipliers
    m(ii:numrow, 1) = c(ii:numrow, 1) / c(ii - 1, ii - 1);
    %multiyply the first row by each multiplier for first column
    p = c(ii - 1,:) .* m(ii:numrow, ii - 1);
    c(ii:numrow,:) = c(ii:numrow,:) - p;
end
