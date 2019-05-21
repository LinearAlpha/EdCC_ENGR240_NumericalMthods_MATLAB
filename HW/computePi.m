%Create a 2-D matrix that includes the following items:
% Three cases of n: 10, 20, 40
% Zeros for where the estimated pi will be stored
% Zeros for where the true relative error will be stored.
Pi_est = [10 0 0; 20 0 0; 40 0 0; 1 0 0];
calc = @ (x) (-1)^(x - 1)* (1 / (2 * x - 1));
for i = 1:4
    tmp = 0;
    for j = 1:Pi_est(i,1)
        tmp = tmp + calc(j);
    end
    if i == 4
        while (abs((pi - tmp) / (pi)) > 1 * 10^(-10))
            tmp2 = Pi_est(4, 1);
            tmp = tmp + calc(tmp2);
            Pi_est(4, 1) = tmp2 + 1;
            tmp2 = 4 * tmp
        end
    end
    Pi_est(i,2) = 4 * tmp;
    tmp = pi - Pi_est(i, 2);
    Pi_est(i,3) = abs(tmp / pi);
end
Pi_est
