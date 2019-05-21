function Xs = SquareRoot(p, Xesr, err, imax)
F = @ (x) x^2 - p;
Fdev = @ (x) 2 * x;
for i = 1:imax
    xi = Xesr - F(Xesr) / Fdev(Xesr);
    if abs((xi - Xesr) / Xesr) < err
        Xs = xi;
        break 
    end
    Xesr = xi;
end
if i == imax
    Xs = 'No Solution';
end
