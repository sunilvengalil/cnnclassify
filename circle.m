function [ im1 ] = circle( imageHeight,imageWidth,center,r,f,b )
    im1 = b * ones(imageHeight,imageWidth);
    c1 = center(1);
    c2 = center(2);
    
    for x = c1:c1+r;
        
        y =  round(sqrt(r * r - (x-c1)*(x-c1)));
        
                
        for y1 = c2 - y:c2
            im1(x,y1,1)=f;
        end
        
    end
    
    for y = c2:c2+r;
        
        x =  round(sqrt(r * r - (y-c2)*(y-c2)));
        
        for x1 = c1:x+c1
            im1(x1,y)=f;
        end
        for x1 =c1 - x :x
            im1(x1,y)=f;
        end
        
    end
    
    for x = c1-r:c1;
        
        y =  round(sqrt(r * r - (x-c1)*(x-c1)));
        
        for y1 = c2:y+c2
            im1(x,y1)=f;
        end
        
        for y1 = c2-y:c2
            im1(x,c2-y)=f;
        end
        
    end
    
    for y = c2-r:c2;
        
        x =  round(sqrt(r * r - (y-c2)*(y-c2)));
        
        for x1 = c1-x:c1
            im1(x1,y)=f;
        end
        
    end
end

