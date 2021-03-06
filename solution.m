%calculmodele();
imagefixe=imread('images/arbre.jpg');
seuilimage=370;
seuilmain=120;
%pour la premi�re image
    video= VideoWriter('videofinale.avi');
    open(video);
    image=strcat('images/',num2str(1),'image.jpg'); 
    distance=distancemaha(matricecov,moy,image);       %calcul de l'image seuil et des barycentres lab�lis�s
    imageseuil=seuillage(distance,seuilimage);
    [barycentre,imlabel]=trouverpicot(imageseuil);
    bary{1}=barycentre;
    disp(bary{1}); %on stocke les barycentres 
    imagefinale=motif2frame(imagefixe,imread(image),barycentre(:,2).',barycentre(:,1).',0.9,main); %incrustation
    writeVideo(video,imagefinale)
for i=2:248 %pour toutes les images

        image=strcat('images/',num2str(i),'image.jpg'); 
        distance=distancemaha(matricecov,moy,image);       %calcul de l'image seuil et des barycentres lab�lis�s
        imageseuil=seuillage(distance,seuilimage);
        [barycentre,imlabel]=trouverpicot(imageseuil);
        barycentre= ordonnerbarycentres (bary{i-1}, barycentre); %ordonne les barycentres suivants les pr�c�dents
        bary{i}=barycentre;
        distancemain=distancemaha(matricecovmain,moymain,image);
        main=seuillage(distancemain,seuilmain);
        main=reconstruire(main);
        main=im2bw(main,0.5);
        
        imagefinale=motif2frame(imagefixe,imread(image),barycentre(:,2).',barycentre(:,1).',0.9,main); %incrustation

        writeVideo(video,imagefinale);
end
close(video);