function [GrSort GrAve GrSD] = SortAveSD(Grades)
%SortAveSD sorts a vector that contains grades from the smallest to the
%largest, calcylates the average grade ans the standard deviation.
%input argument:
%Grades: A vector with the grades.
%Ouput arguments:
%GrSort: A vector with the grades sorted from the smallest to the largest.
%GrAve:  The avarage grade.
%GrSD: The standard deviation.

n = length(Grades);
GrAve = Ave(Grades, n);
GrSort = LowToHigh(Grades, n);
GrSD = StandDiv(Grades, n, GrAve);
end

function av = Ave(x, num)
av = sum(x) / num;
end

function xsorted = LowToHigh(x, num)
for i = 1:num - 1
    for j = i + 1:num
        if x(j) < x(i)
            temp = x(i);
            x(i) = x(j);
            x(j) = temp;
        end
    end
end
xsorted = x;
end

function Sdiv = StandDiv(x, num, ave)
xdif2 = (x - ave).^2;
Sdiv = sqrt(sum(xdif2) / (num - 1));
end
