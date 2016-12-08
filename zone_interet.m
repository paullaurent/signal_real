function[zone_interet]=zone_interet(image1)
    imshow(image1);
    [x,y] = ginput(2);  % On s�lectionne une partie de l'image
    var = imread(image1); % Charger en m�moire une image
    zone_interet=var(y(1):y(2),x(1):x(2),1:3); % Cree une matrice repr�sentant la zone d'int�r�t
    image(zone_interet); % Afficher le resultat du ginput
end