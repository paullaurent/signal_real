function[mu]=moyennes(image)
res = mean(mean(image)); % Calcul des moyennes des pixels
mu(1)=res(:,:,1); % On les met dans un vecteur
mu(2)=res(:,:,2);
mu(3)=res(:,:,3);
end
