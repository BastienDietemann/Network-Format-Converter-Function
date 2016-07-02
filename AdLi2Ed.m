function E = AdLi2Ed( AL )

%Author: Bastien Dietemann (29.06.2016)
%Program to convert an adjacency list into an edge list

if iscell(AL)
    E=[]; % E = Edge List
    z = 1; %z = position in E

    for i = 1:size(AL,1) %go through all entries in the list
        if ~isempty(AL{i,2}) %there should be a value everywhere but better be save
           for j = 1:size(AL{i,2},2) %go for all entries in the vector
               if AL{i,2}(j)>i %but just take upper triangle 
                   E(z,1)=i;
                   E(z,2)=AL{i,2}(j);
                   z = z+1;
               end
           end
        end
    end
else
    error('input was not an Adjacency List')
end

end

