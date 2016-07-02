function AL = AdMa2AdLi( A )

%Author: Bastien Dietemann (29.06.2016)
%Program to convert an adjacency matrix into an adjacency list

AL = cell(size(A,1),2);
for i = 1:size(A,1)
    tmp = [];
    for j = 1:size(A,2)
        if A(i,j)
            tmp(end+1) = j;
        end
    end
    AL{i,1}=i;
    AL{i,2}=tmp;
end



end

