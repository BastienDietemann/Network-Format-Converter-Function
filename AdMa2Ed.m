function E = AdMa2Ed(A)

%Author: Bastien Dietemann (29.06.2016)
%Program to convert an adjacency matrix into an edge list

z = 1;
for i = 1:size(A,1)-1
    %for every row
    for j = 1:size(A,2) 
        if A(i,j)>0
            E(z,1) = i;
            E(z,2) = j;
            %E(z,3) = A(i,j); if needed
            z = z+1;
        end       
    end
end




end

