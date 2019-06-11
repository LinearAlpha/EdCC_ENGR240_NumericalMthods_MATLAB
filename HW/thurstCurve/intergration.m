clear, close all, clc;
load("Thrust")
t = 0:0.01:3.5;
plot(t, Thrust)
N = length(t);
h = (3.5 - 0) / (N - 1)
Imp = h / 2 * (Thrust(1) + Thrust(N)) + h * sum(Thrust(2:N -1))
