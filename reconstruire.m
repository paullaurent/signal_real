function[obr]=reconstruire(image)
I=image;
mask=adapthisteq(I);
se=strel('disk',3);
marker=imerode(mask,se);
obr=imreconstruct(marker,mask);