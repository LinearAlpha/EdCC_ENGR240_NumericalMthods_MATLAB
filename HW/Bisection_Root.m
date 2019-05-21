F = @ (x) x - 2 * exp(-x);
a = 0; b = 1; eps = 0.000001; imax = 100;
for i = 1:imax
    xNS = (a + b) / 2;
    tol = (b- a) / 2;
    FxNS = F(xNS);
    if FxNS == 0
        fprintf("The solution is %f.5\n", xNS)
        break
    elseif abs(tol) < eps
        Xs = xNS;
        break
    elseif F(a) * F(b) > 0
        disp('Erroe, the domain dose not bracket the root')
        break
    end
    if F(a) * FxNS < 0
        b = xNS;
    else
        a = xNS;
    end
end
if abs(tol) < eps || FxNS == 0
    fprintf("Number of interation is %i\n", i)
    fprintf("The value of Xs is %f\n",Xs)
    fprintf("Vlaue of f(Xs) is %f\n", FxNS)
end