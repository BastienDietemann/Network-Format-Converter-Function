function A = Ed2AdMa(E)

%Author: Bastien Dietemann (29.06.2016)
%Program to convert an edge list into an adjacency matrix

    N = E(end,1)+1;
    A= zeros(N,N);

if size(E,2)==2 %there are just two columns so colum's entries indicate 1
    for i =1:size(E,1)
        A(E(i,1),E(i,2))=1;
        A(E(i,2),E(i,1))=1;
    end
elseif size(E,2)==3
    for i =1:size(E,1)
        A(E(i,1),E(i,2))=E(i,3);
        A(E(i,2),E(i,1))=E(i,3);
    end
else
    error('input was not an Edge List')
end

end

