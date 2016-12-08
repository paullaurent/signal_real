function[cov]=covariance(zone,moyenne)
somme11 = mean(mean((zone(:,:,1)-moyenne(1)).^2));
somme12= mean(mean((zone(:,:,1)-moyenne(1)).*(zone(:,:,2)-moyenne(2))));
somme13=mean( mean((zone(:,:,1)-moyenne(1)).*(zone(:,:,3)-moyenne(3))));
somme21=somme12;
somme22=mean(mean((zone(:,:,2)-moyenne(2)).^2));
somme23=mean(mean((zone(:,:,2)-moyenne(2)).*(zone(:,:,3)-moyenne(3))));
somme31=somme13;
somme32=somme23;
somme33=mean(mean(mean((zone(:,:,3)-moyenne(3)).^2)));
cov=[somme11 somme12 somme13; somme21 somme22 somme23; somme31 somme32 somme33];
end