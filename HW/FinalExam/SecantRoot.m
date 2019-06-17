function Xs = SecantRoot(Fun, Xa, Xb, Err, imax)
%SecantRoot finds the root of Fun = 0 using the secant method.
%Input bariables:
%Fun     Name of a user-defined function that calculated Fun for a given x.
%a,b     Two points in the neigborhood of the root (on eithet side or the same
%        side of the root).
%Err     Maximum error.
%imax    Maximum numder of iterations
%Output variable:
%Xs      Solurion.

for i = 1:imax
    fXb = Fun(Xb);
    Xi = Xb - fXb * (Xa - Xb) / (Fun(Xa) - fXb);
    if abs((Xi - Xb) / Xb) < Err
        Xs = Xi;
        break
    end
    Xa = Xb;
    Xb = Xi;
end
if i == imax
    fprintf('Solution was not obtained in %i iterations.\n', imax)
    Xs = 'No answer';
end
