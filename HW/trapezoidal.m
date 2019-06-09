function I = trapezoidal(Fun, a, b, N)
% trapezoidal numerically intergrate using the composite trapezoidal method.
% Inut Variable:
% Fun   Name for the funciton to be intergrated.
% (Fun is assumned to be written with element-by-element calculations.)
% a     Lower limits of intergration.
% b     Uper limits of integration.
% N     Number od subintervals.
% I     Value of the integral.

h = (b - a) / N;
x = a:h:b;
F = Fun(x);
I = h * (F(1) + F(N + 1)) / 2 + h * sum(F(2:N));

