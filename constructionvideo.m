video= VideoWriter('videofinale.avi');
        open(video);
for i=2:248 %pour toutes les images création video

        image=strcat('images_vid/',num2str(i),'image.jpg');
        image=imread(image);
        writeVideo(video,image);

end
        close(video)