function [ ] = allDataImage()
load ('forGraph')
figure('Name', 'Thrust')
plot(t, thrust)
title("Time vs Thrust")
xlabel("Time (s)"), ylabel("Thrust (N)")

figure('Name',  'Propellant Mass Data')
plot(t, mProp);
title("Time vs Propellant")
xlabel("Time (s)"), ylabel("Propellant (kg)")

figure('Name',  'velocity')
plot(tNew, v);
title("Time vs velocity")
xlabel("Time (s)"), ylabel("velocity (m/s)")

figure('Name',  'hight')
plot(tNew, v);
title("Time vs hight")
xlabel("Time (s)"), ylabel("hight (m)")
