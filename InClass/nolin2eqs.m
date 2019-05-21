clear, close, clc %clear the all valiable and clear consol
%Define function
F1 = @ (x, y) x^2 + 2 * x + 2 * y^2 - 26;
F2 = @ (x, y) 2 * x^3 - y^2 + 4 * y - 19;
dF1x = @ (x, y) 2 * x + 2;
dF1y = @ (x,y) 2 * x + 2;
dF2x = @ (x, y) 6 * x^2;
dF2y = @ (x,y) -2 * y + 4;
%Define initial guess
xi = 1;
yi = 1;
for i = 1:10
    %Computing jacobian for current guess
    j = [dF1x(xi, yi) dF1y(xi, yi);
        dF2x(xi, yi) dF2y(xi, yi)];
    j = det(j);
    delx = -F1(xi, yi) * dF2y(xi, yi) + F2(xi, yi) * dF1y(xi, yi);
    delx = delx / j;
    dely = -F2(xi, yi) * dF1x(xi, yi) + F1(xi, yi) * dF2x(xi, yi);
    dely = dely / j;
    xtmp = xi + delx;
    ytmp = yi + dely;
    xi = xtmp;
    yi = ytmp;
    clear xtmp; clear ytmp
    disp('interation      newDelta x       new Delta y')
    fprintf("%i %15.3f %15.3f", i, delx, dely)
    fprintf('\n')
end
%Computing jacobian for current guess
j = [dF1x(xi, yi) dF1y(xi, yi);
    dF2x(xi, yi) dF2y(xi, yi)];
j = det(j);

