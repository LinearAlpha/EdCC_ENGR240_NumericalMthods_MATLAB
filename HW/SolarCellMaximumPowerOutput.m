clear, close, clc, format long e, grid on, hold on
Voc = 0.5;
T = 297;
q = 1.6022E-19;
Kb = 1.3806E-23;
Xini = 10;
err = 0.0001;
imax = 1000;
tmp = Kb * T;
tmp2 = q / tmp;
F = @ (Vmp) (q * Vmp) / tmp;
F1 = @ (Vmp) exp(F(Vmp)) .* (1 + F(Vmp)) - exp((q * Voc) / tmp)
Fd = @ (Vmp) tmp2 .* exp(F(Vmp)) .* (2 + F(Vmp))
Fd2 = @ (Vmp) tmp2^2 .* exp(F(Vmp)) .* (3 + F(Vmp))
Vmp = 0:0.001:0.5;
plot(Vmp, F1(Vmp))
plot(Vmp, Fd(Vmp))
plot(Vmp, Fd2(Vmp))
clear Vmp
for ii = 1:imax
    Xi = Xini - F1(Xini) / Fd(Xini);
    if abs((Xi - Xini) / Xini) < err
        break
    end
    Xini = Xi;
end
xNS = Xi
