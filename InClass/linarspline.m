clear, clc
x = [8 11 15 18];
y = [5 9 10 8];
%plot(x,y)
n = size(x,1)
coeffs = zeros(2, n -1)
%create a guess value
newx = 12.7
for jj = i:n
    if newx < x(jj)
        i = jj - 1
        break
    end
end
fun = (newx -x(i+1))/(x(i)-x(i+1))*y(i)+(newx-x(i))/(x(i+1)-x(i))*y(i+1)

