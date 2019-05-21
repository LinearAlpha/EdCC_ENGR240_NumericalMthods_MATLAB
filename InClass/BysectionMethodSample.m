x=(-20:1:20);
y = 8 - 4.5 .* (x-sin(x));
plot(x,y)

a = -5;
b = 0;
eps = 1E-3;
tolerance = 1;
ii = 0;
while tolerance > eps
    funa = 8 - 4.5 .* (a-sin(a));
    funb = 8 - 4.5 .* (b-sin(b));
    %Use this one for Bisection Method
    %Xns = (a+b)/2;
    
    %Use this one for Regular Method
    
    Xns = (a * funb - b * funa) / (funb - funa);
    funXns = 8 - 4.5 .* (Xns - sin(Xns));
    if funXns * funa > 0
        a = Xns
    else 
        b = Xns
    end
tolerance = abs((b-a) / 2);
    if tolerance < eps
        break
    end
end
