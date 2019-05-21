%beam dlflection problem
L = 4; %lenght of thw beam
E = 70E9; %modulus of elasticity
I = 52.9E-6; %moment of inertia
w = 20E3; %force 
imax = 10; err = 1E-100; Xini = 2;
F = @ (x) w / (360 * L * E * I) * (7 * L^4 * x - 10 * L^2 * x^3 + 3 * x^5);
Ffdev = @ (x) w / (360 * L * E * I) * (7 * L^4 - 30 * L^2 * x^2 + 15 * x^4);
Fsdev = @ (x) w / (360 * L * E * I) * (-60 * L^2 * x + 15 * 4 * x^3);
ii = 0;
while true
    ii = 1 + ii;
    Xi = Xini - Ffdev(Xini) / Fsdev(Xini);
    if abs((Xi - Xini) / Xini) < err
        Xs = Xi;
        break
    end
    Xini = Xi;
end
ii
Xs
FunXs = F(Xi)
