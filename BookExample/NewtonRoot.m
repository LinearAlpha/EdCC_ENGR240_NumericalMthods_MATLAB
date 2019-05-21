function Xs = NewtonRoot(Fun, FunDer, Xest, Err, imax)
%NewtonRoot finds the root of fun = 0 neer the point Xest using Nweton's method.
%Input variables:
%Fun    Name of a user-defined function that calaulates Fun for a given x.
%FunDer Name of a user-defined function that calculated the derivative of Fun
%       of Fun for a gievn x.
%Xest   Initial estimate of the solution.
%Err    Maximum error.
%imax   Maximum number of iterations.
%Outout variable:
%Xs     solurion

for i = 1:imax
    Xi = Xest - Fun(Xest) / FunDer(Xest)
    if abs((Xi - Xest) / Xest) < Err
        Xs = Xi;
        break
    end
    Xest = Xi;
end
if i == imax
    fprintf('Solution was not obtained in %i iterations.\n', imax)
    Xs = 'No answer';
end
