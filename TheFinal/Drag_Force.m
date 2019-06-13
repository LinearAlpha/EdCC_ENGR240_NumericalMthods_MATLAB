function [D] = Drag_Force(C,S,V,x)
alt = xlsread('Density','A2:A86');
row = xlsread('Density','B2:B86');
n = numel(alt);
for i = 2:n
    if x< alt(i)
        a1 = row(i);
        a2 = (row(i)-row(i-1))/(alt(i)-alt(i-1));
        
        break
    end
end
cpo = a1+a2*(x-alt(i));
q = .5.*cpo.*(V.^2);
D = q*C*S;
