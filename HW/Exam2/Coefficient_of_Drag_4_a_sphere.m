close,clear, clc
%read in the raw data
rawData=xlsread('WindTunnelData','A2:B131');
plot(rawData(:, 1), rawData(:, 2))
n =  size(rawData(:, 1), 1);
Sx = sum(rawData(:, 1));
Sy = sum(rawData(:, 2));
Sxy = sum(rawData(:, 1) .* rawData(:, 2));
Sxx = sum(rawData(:, 1).^2);
tmp = n * Sxx - Sx^2;
a1 = (n * Sxy - Sx * Sy) / tmp
a0 = (Sxx * Sy - Sxy * Sx) / tmp
clear tmp;
F = @ (x) a1 * x + a0;
x = 0: 0.001:300;
hold on
grid on
plot(x, F(x))
xlim([0 300])
S = (0.075 / 2)^2 * pi;
Cd = a1 / S
