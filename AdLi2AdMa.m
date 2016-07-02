function A = AdLi2AdMa( AL )

%Author: Bastien Dietemann (29.06.2016)
%Program to convert an adjacency list into an adjacency matrix

if iscell(AL)
    N = size(AL,1);
    A = zeros(N,N); %create empty Matrix A

    for i = 1:size(AL,1) %go through all entries in the list
        if ~isempty(AL{i,2}) %there should be a value everywhere but better be save
           for j = 1:size(AL{i,2},2) %go for all entries in the vector
              A(i,AL{i,2}(j))=1;
           end
        end
    end
else
    error('input was not an Adjacency List')
end

end

