function[tableau]=distancemaha(cov,moy,image1)
var=imread(image1);
var1=reshape(var(:,:,1),1,[])-moy(1);
var2=reshape(var(:,:,2),1,[])-moy(2);
var3=reshape(var(:,:,3),1,[])-moy(3);
distancemoy=[var1;var2;var3];
produit1=double(inv(cov))*double(distancemoy);
produit2=double(distancemoy).*produit1;
produit2=sum(produit2,1);
tableau=reshape(produit2,size(var,1),size(var,2));%on calcul la distance de mahalanobis
end
