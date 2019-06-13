function [ ] = allDataImage()

load ('forGraph')

figure('Name', 'Thrust')
plot(t, thrust)
title("Thrust vs Time")
xlabel("Time (s)"), ylabel("Thrust (N)")
grid on;

figure('Name',  'Propellant Mass Data')
plot(t, mProp);
title("Propellant vs Time")
xlabel("Time (s)"), ylabel("Propellant (kg)")
grid on;

figure('Name',  'velocity')
plot(tNew, v);
title("Velocity vs Time")
xlabel("Time (s)"), ylabel("velocity (m/s)")
grid on;

figure('Name',  'height')
plot(tNew, y);
title("Height vs Time")
xlabel("Time (s)"), ylabel("height (m)")
grid on;

figure('Name', 'drag force')
plot(tNew, Drag_Force(Cd, S, v, y))
title("Drag Force vs Time")
xlabel("Time (s)"), ylabel("Force (N)")
grid on;

