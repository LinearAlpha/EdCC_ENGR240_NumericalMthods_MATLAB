clear, clc, close all;
Motor=xlsread('EstesE9','A2:B33');
t = Motor(:, 1); %original time
f = Motor(:, 2); %force
clear Motor;
h = 0.01; %step

t2 = 0:h:3.5;
numOriginal = length(t);
numNewTime = length(t2);
Thrust = zeros(1, size(t2, 2));
for i = 1:numNewTime
    for j = 2:numOriginal
        if t2(i) < t(j)
            tmp = (t2(i) - t(j)) / (t(j - 1) - t(j)) * f(j - 1) ;
            tmp2 = (t2(i) - t(j - 1)) / (t(j) - t(j - 1))  * f(j) ;
            Thrust(i) = tmp + tmp2;
            break
        end
    end
end
figure('Name', 'Thurst');
plot(t, f, 'r--o', t2, Thrust, 'b-')
grid on;
grid minor;
