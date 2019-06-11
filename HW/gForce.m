function Fg = gForce(h, m)

g = 6.674128E-11;
Me = 5.97E24;
Re = 6.37E6;
Fg = (g * Me * m) / (Re + h)^2

