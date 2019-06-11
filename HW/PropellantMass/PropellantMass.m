clear, close all, clc;
load("Imp"), load("Thrust")
h = 0.01;
t = 0:h:3.5;
figure('Name', "Thrust")
subplot(2, 2, 1)
plot(t, Thrust)
title("Original")
grid on
m = 0.0358;
Thrust = Thrust ./ Imp;
subplot(2, 2, 2)
plot(t, Thrust)
title("New")
propThr = Thrust .* m;
subplot(2, 2, 3)
plot(t, propThr)
title("propallant")
m_Prop = zeros(1, length(t));
m_Prop(1) = m;
for i = 2:length(t) - 1
    %tmp = h / 2 * (propThr(1) + propThr(i)) + h * sum(propThr(2:i - 1));
    tmp = (propThr(i - 1) + propThr(i)) / 2 * 0.01;
    tmp = m_Prop(i - 1) - tmp;o
    if tmp < 0
        break
    else
        m_Prop(i) = tmp;
    end
end
subplot(2, 2, 4)
plot(t, m_Prop);
title("Time vs Propellent Mass")
