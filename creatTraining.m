%create images with four different oriented linesegments
%TODO color
clc;
close all;
clear all;

im2folderName = 'circle';
im1folderName ='square';
labelfolderName = 'label';
imageWidth = 200;
imageHeight = 200;


rootDir = 'C:\cnnclassify\data\';
vl_xmkdir(fullfile(rootDir));
vl_xmkdir(fullfile(rootDir,im1folderName));
vl_xmkdir(fullfile(rootDir,im2folderName));


%imwrite(image,fileName,'jpg');
%imwrite(uint8(label),labelFileName,'jpg');



createImages(rootDir,im1folderName,imageHeight,imageWidth,1);

%for index = 1:640
%    fileName =strcat(rootDir,im1folderName,'\im', int2str(index),'.jpg');
%    imwrite(im(:,:,:,index),fileName,'jpg');
%end

createImages(rootDir,im2folderName,imageHeight,imageWidth,2);

%for index = 1:640
%    fileName =strcat(rootDir,im2folderName,'\im', int2str(index),'.jpg');
%    imwrite(im(:,:,:,index),fileName,'jpg');
%end
