function  createImages(rootDir,imfolderName, imageHeight,imageWidth,type)
  
  index = 1;
  %im = zeros(imageHeight,imageWidth,3,8 * 8 * 11); 
  for c1 = 92 :2:106
  for c2 = 92:2:106 
  for r = 80:90
    
    
    im1 = circle(imageHeight,imageWidth,[imageHeight/2 imageWidth/2],r,1,0);
    if type == 2
       od1 = circle(imageHeight,imageWidth,[c1 c2],20,1,0);
    end
    
    if type == 1
       od1 = square(imageHeight,imageWidth,[c1 c2],20,1,0);
    end
    
    
    im2 = zeros(imageHeight,imageWidth,3);
    
    od = zeros(imageHeight,imageWidth,3);
    od(:,:,2) = od1;

    od(:,:,3) = od1;
    
    im2(:,:,1) = im1;
    im2 = im2 + od;
    
    %im(:,:,:,index) = im2;
    
    fileName =strcat(rootDir,imfolderName,'\im', int2str(index),'.jpg');
    imwrite(im2,fileName,'jpg');
    
    index = index+ 1;
  end
  end
  end
    
    
    
end

