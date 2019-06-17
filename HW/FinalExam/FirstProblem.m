clear
clc
close all
c = 1.4E4;
m = 1.2E3;
k = 1.25E9;
tDam = 0:0.001:1;
t = 0:0.0001:0.01;
n = c / (2 * m);
p = sqrt(k / m - c^2 / (4 * m^2));
y = zeros(1, length(t));
y(1) = 0.3;
Fy = @ (t) exp(- n .* t) .* (y(1) .* cos(p .* t) + y(1) .* n / p .* ...
    sin(p .* t));
y = Fy(t);
tEq(1) = SecantRoot(Fy, 0, 0.002, 0.0001, 100);
tEq(2) = SecantRoot(Fy, 0.002, 0.005, 0.0001, 100);
tEq(3) = SecantRoot(Fy, 0.005, 0.01, 0.0001, 100);
tEq
subplot(2,1, 1)
plot(tDam, Fy(tDam));
grid on;
title("Damping of position graph (Position vs Time)")
ylabel("Position (m)"), xlabel("Time (s)")
subplot(2,1, 2)
plot(t, Fy(t))
grid on;
title("Damping of position graph, time 0 to 0.01 (Position vs Time)")
ylabel("Position (m)"), xlabel("Time (s)")


