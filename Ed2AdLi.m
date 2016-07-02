function AL = Ed2AdLi( E )

%Author: Bastien Dietemann (29.06.2016)
%Program to convert an edge list into an adjacency list

%initiate running variables
referenceNumber = E(1,1);
positionInEdgeList = 1;

%Create List Structure first
N = max(max(E(:,1)),max(E(:,2)));
AL = cell(N,2);
for i = 1:N
   AL{i,1}=i; 
   AL{i,2}=[]; 
end

% Fill all values from the Edge List into the List
while positionInEdgeList <=size(E,1)
    while referenceNumber == E(positionInEdgeList,1) &&  positionInEdgeList <=size(E,1)  %and now fill vector
        AL{referenceNumber,2}(end+1)=E(positionInEdgeList,2); %enter value of list
        positionInEdgeList = positionInEdgeList+1;
        if positionInEdgeList > size(E,1), break, end
    end
    referenceNumber = referenceNumber+1;
end

end

