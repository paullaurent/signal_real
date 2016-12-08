function[picot]=distancemin(numeropicot,barycentres1,barycentres2)
x1=barycentres1(numeropicot,1);
y1= barycentres1(numeropicot,2);
distanceFinale=realmax;
for i=1:4
    distance1=(x1-barycentres2(i,1))^2+(y1-barycentres2(i,2))^2;
    if distance1<distanceFinale
        distanceFinale = distance1;
        picot=i;
    end
end
    