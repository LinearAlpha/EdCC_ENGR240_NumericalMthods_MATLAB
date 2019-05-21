%create peoblem
a = [9 -2 3 2;
    2 8 -2 3;
    -2 3 2 10]
b = [54.5; 
    -14; 
    12.5;
    -21]
n = size(a,1)
%creat initila valuse
xo = ones(n,1)
ap = a
ap(eye(size(ap)) ~= 0) = 0
imax = 10
for ii = 1:imax
    ax = ap .* xo
    newx = (b- ax) ./ diag(a)
    if abs((newx(1) - xo(1)) / (xo(1))) < eps
        break
    end
    xo = newx
end
