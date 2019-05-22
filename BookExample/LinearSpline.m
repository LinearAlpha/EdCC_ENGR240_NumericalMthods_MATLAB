function Yint = LinearSpline(x, y, Xint)
% 1inearSp1ine ca1cu1ates interpo1ation using 1inear sp1ines.
% Input variab1es:
% x A vector with the coordinates x of the data points.
% y A vector with the coordinates y of the data points.
% Xint The x coordinate of the interpo1ated point.
% Output variab1e:
% Yint The y va1ue of the interpo1ated point.

n = length(x);
for i = 2:n
    if Xint < x(i)
        break
    end
end
Yint=(Xint-x(i))*y(i-1)/(x(i-1)-x(i))+(Xint-x(i-1))*y(i)/(x(i)-x(i-1));
