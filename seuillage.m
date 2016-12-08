function [image]=seuillage(distance,seuil)
for i=1:size(distance,1)
    for j=1:size(distance,2)
        if distance(i,j)<=seuil
            image(i,j)=1;
        else
            image(i,j)=0;
        end
    end
end
end