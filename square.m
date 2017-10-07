function [ im1 ] = square( imageHeight,imageWidth,center,r,f,b )
    im1 = b * ones(imageHeight,imageWidth);
    c1 = center(1);
    c2 = center(2);
    
    for x = c1 -r: c1+r
        for y = c2-r : c2+r
            im1(x,y) = 1;
        end
    end
    
end

