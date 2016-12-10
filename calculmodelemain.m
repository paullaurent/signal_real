% video='video.mp4';
% decoupe_video(video);
imagemain='images/41image.jpg';
zonemain=zone_interet(imagemain);
moymain=moyennes(zonemain);
matricecovmain=covariance(zonemain,moymain);
distancemain=distancemaha(matricecovmain,moymain,imagemain);
reponsemain = false;
while reponsemain == false
    prompt=['Veuillez entrer une valeur seuil'];
    answermain=inputdlg(prompt);
    imageseuilmain=seuillage(distancemain,str2num(answermain{:}));
    imshow(imageseuilmain);
    prompt=['Cela vous convient-il ? (o/n)'];
    answer2main=inputdlg(prompt);
    if (answer2main{:} == 'o')
        reponsemain = true;
    end
end
chemin = 'save/save.mat';
save(chemin);
