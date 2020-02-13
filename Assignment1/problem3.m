img = imread('lena.jpeg');

[a,b] = size(img);

for x=1:1:a
    for y=1:1:b
if(x-a/2)^2+(y-b/2)^2 >=2500
    
        img(x,y) = 0 ;
end
    end
end



    

imshow(img)