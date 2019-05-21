d = 0.25; m = 10; cD = 0.47; low = 1225; g = 9.81;
A = pi * (d / 2)^2;
tmp = 2 * m * g;
tmp = tmp / (low * cD * A);
TerminalV = sqrt(tmp)