function [mpay,tpay] = loan(amount,rate, years)
%loan calculates monthly and total payment of loan.
%Input arguments:
%amount:    loan amout in $
%rate:      annual interest rate in percent.
%years:     number of years.
%output arguments:
%mpay:      monthly payment .
%tpay:      total paymet.

format bank
ratem = rate * 0.01 / 12;
a = 1 + ratem;
b = (a^(years * 12) - 1) / ratem;
mpay = amount * a^(years * 12) / (a*b);
tpay = mpay * years * 12;

end