% video='video.mp4';
% decoupe_video(video);
image='images/1image.jpg';
zone=zone_interet(image);
moy=moyennes(zone);
matricecov=covariance(zone,moy);
distance=distancemaha(matricecov,moy,image);
reponse = false;
while reponse == false
    prompt=['Veuillez entrer une valeur seuil'];
    answer=inputdlg(prompt);
    imageseuil=seuillage(distance,str2num(answer{:}));
    imshow(imageseuil);
    prompt=['Cela vous convient-il ? (o/n)'];
    answer2=inputdlg(prompt);
    if (answer2{:} == 'o')
        reponse = true;
    end
end
chemin = 'save/save.mat';
save(chemin);
