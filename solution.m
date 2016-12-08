%calculmodele();
imagefixe=imread('images/arbre.jpg');
seuil=100;
%pour la première image

    image=strcat('images/',num2str(2),'image.jpg'); 
    distance=distancemaha(matricecov,moy,image);       %calcul de l'image seuil et des barycentres labélisés
    imageseuil=seuillage(distance,seuil);
    [barycentre,imlabel]=trouverpicot(imageseuil);
    bary{1}=barycentre;
    disp(bary{1}); %on stocke les barycentres 
    
for i=2:248 %pour toutes les images

        image=strcat('images/',num2str(i),'image.jpg'); 
        distance=distancemaha(matricecov,moy,image);       %calcul de l'image seuil et des barycentres labélisés
        imageseuil=seuillage(distance,seuil);
        [barycentre,imlabel]=trouverpicot(imageseuil);
        barycentre= ordonnerbarycentres (bary{i-1}, barycentre); %ordonne les barycentres suivants les précédents
        bary{i}=barycentre;
        
   mat=zeros(520,576);
   imagefinale=motif2frame(imagefixe,imread(image),barycentre(:,2).',barycentre(:,1).',1,mat); %incrustation
   imshow(imagefinale);
   
   lien=strcat('images_vid/',num2str(i),'image.jpg');
   imwrite(imagefinale,lien,'jpg', 'Quality',0);
   
end