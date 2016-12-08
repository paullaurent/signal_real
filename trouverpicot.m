function [barycentres,imageLabel]=trouverpicot(image)
imageReconstruite=reconstruire(image);
imageReconstruite=im2bw(imageReconstruite,0.5);%imagebinaire(noir et blanc)
imageLabel=bwlabel(imageReconstruite); %image labélisée
[x,y]=find(imageLabel==5);%récupère tous les points labélisés 1
[x2,y2]=find(imageLabel==4);
[x3,y3]=find(imageLabel==2);
[x4,y4]=find(imageLabel==3);
xb=mean(x); %barycentre des points 1
yb=mean(y); 
x2b=mean(x2);
y2b=mean(y2); 
x3b=mean(x3);
y3b=mean(y3); 
x4b=mean(x4);
y4b=mean(y4);
barycentres=[xb yb; x2b y2b; x3b y3b; x4b y4b];
end