clear, clc, close;
v = @ (t) 3500 .* sin(140 .* pi .* t) .* exp(-63 .* pi .* t);
t = 0:0.001:0.015;
plot(t, v(t));
N = length(t);
h = (0.015 - 0) / (N- 1);
tmp = zeros(2,N);
for i = 2:2:N - 2
    tmp(1, i) = (v(t(i))^2) / 50;
end
for i = 3:2:N - 1
    tmp(2, i) = (v(t(i))^2) / 50;
end
Pulse = h / 3 * (v(0) + v(0.015) + 4 * sum(tmp(1, :)) + 2 * sum(tmp(2, :)))
