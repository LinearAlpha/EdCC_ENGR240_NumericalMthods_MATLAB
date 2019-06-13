clear, close all, clc
%Initial Variavles
a = 0;                      %Initial time
b = 3.5;                    %Final time
h = 0.01;                   %Gap of indiviaul variables
S = 4.418E-3;               % the "frontal area" for the object 
Cd = 0.5;                   %the coefficient of drag for the object
mTotal = 0.6;               %Total mass of rokect
mProp = 0.0358;             %mass of fuel
vi = 0;                     %initial speed
yi = 0;                     %initial hight

%Evaluation of thrust
t = a:h:b; %Creating time vector
[thrust , imp]= Thrust(t, h);
mProp = fueldMass(thrust, imp, mProp, t);

%Equation 
mRokect = mTotal - mProp; %mass of rokect by the time
dydt = @ (v) v;
dvdt = @ (t, y, v, i) thrust(i) / mRokect(i) - gForce(y, mRokect(i)) - ...
    Drag_Force(Cd, S, v, y);

%ODE
[tNew, y, v] = ODEexpli(dvdt, dydt, t, vi, yi, h);

%function for graph
save("forGraph")
allDataImage();
