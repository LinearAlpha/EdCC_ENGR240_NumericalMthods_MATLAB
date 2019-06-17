function [t, y, v] = ODEexpli(dvdt, dydt, t, vi, yi, h)

N = length(t);
v = zeros(1, N);
v(1) = vi;
y = zeros(1, N);
y(1) = yi;
for i = 1:N
    i;
    t(i + 1) = t(i) + h;
    y(i + 1) = y(i) + dydt(v(i)) * h;
    v(i + 1) = v(i) + dvdt(t(i), y(i), v(i), i) * h;
        if y(i+1)<0
            y(i+1)=0;
        end
end
