%CODE POUR DECOMPOSER EN N IMAGES
function[] = decoupe_video(video)
    workingDir = '.';
    mkdir(workingDir);
    mkdir(workingDir,'images');
    obj = VideoReader(video);
    numFrames=get(obj,'NumberOfFrames');
    for i=1:numFrames
        
        name = strcat(num2str(i),'image.jpg');
        imwrite(obj.read(i),strcat('images/',name),'jpg','Quality',100);
        
    end
    
end