close, clear, clc
A = [ 5 7.5 10 12.5 15 17.5 20 22.5 25 27.5 30;
    3.3 7.5 41.8 51.8 61 101.1 132.9 145.5 171.4 225.8 260.9];
n = size(A);
a = zeros(1, n(2));
divDIF = zeros(n(1), n(2) - 1);
a(1) = A(2,1);
%plot(A(1,:), A(2,:))
for ii = 1:n(2) - 1
    j = ii;
    if ii == 1
        divDIF(ii:size(divDIF, 2),j) = (A(2, 2:n(2)) - A(2, 1:n(2) - 1)) ...
            ./ (A(1, 2:n(2)) - A(1, 1:n(2) - 1));
    else
        divDIF(ii:size(divDIF, 2),j) =  
        
    end
    a(ii + 1) = divDIF(ii + 1, 1); 
end

        
        
