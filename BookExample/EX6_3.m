clear all, clc
x = 0:0.4:6;
y = [0 3 4.5 5.8 5.9 5.8 6.2 7.4 9.6 15.6 20.7 26.7 31.1 35.6 39.3 41.5];
n = length(x);
m = 4;
for ii = 1:2 * m
    xsum(ii) = sum(x .^(ii));
end
%Beginning of setp 3 
a(1, 1) = n;
b(1, 1) = sum(y);
for j = 2:m + 1
    a(1, j) = xsum(j - 1);
end
for ii = 2:m + 1
    for j = 1:m + 1
        a(ii, j) = xsum(j + ii -2);
    end
    b(ii, 1) = sum(x.^(ii - 1) .* y);
end
%step 4
p = (a \ b)'
for ii = 1:m + 1
    pcoef(ii) = p(m + 2 - ii);
end
epsilon = 0:0.1:6;
stressfit = polyval(pcoef, epsilon);
plot(x, y, 'ro', epsilon, stressfit, 'k', 'linewidth', 2)
xlabel('Strain', 'fontsize', 20)
ylabel('stres (MPa)', 'fontsize', 20)
