clear all
F = @ (x) 8 - 4.5 * (x - sin(x));
a = 2; b = 3; imax = 100000; tol = 1E-10000000000000;
Fa = F(a); Fb = F(b);
if Fa * Fb > 0
    disp ('Error: The Function has same sign atpoints a and b.')
else
    disp('interation   a        b    (xNS)  Solution  f(xNS)  Tolrance')
    for i = 1:imax
        xNS = (a + b) / 2;
        toli = (b - a) / 2;
        FxNS = F(xNS);
        fprintf('%3i %11.6f %11.6f %11.6f %11.6f %11.6f\n', i, a, b, xNS, FxNS, toli)
        if FxNS == 0
            fprintf('An exact solution x =%11.6 was found\n', xNS)
            break
        end
        if toli < tol
            break
        end
        if i == imax
            fprintf('Solution was not obtained %i iteration', imax)
            break
        end
        if F(a) * FxNS < 0
            b = xNS;
        else
            a = xNS;
        end
    end
end

