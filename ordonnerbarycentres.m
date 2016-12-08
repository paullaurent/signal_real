function[barycentres2]=ordonnerbarycentres(barycentres1,barycentres2)

    for i=1:4
    numeropicot=distancemin(i,barycentres1,barycentres2);%renvoie un numéro de picot de l'image 2 correspondant au picot i de l'image 1
    x=barycentres2(i,1);
    y=barycentres2(i,2);
    barycentres2(i,1)=barycentres2(numeropicot,1);
    barycentres2(i,2)=barycentres2(numeropicot,2);
    barycentres2(numeropicot,1)=x;
    barycentres2(numeropicot,2)=y;
    
    end
end