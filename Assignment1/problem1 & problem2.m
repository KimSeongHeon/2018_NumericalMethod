img = imread('lena.jpeg');
[a,b] = size(img);

img(a/4:a/4*3,b/4:b/4*3) = img(a/4:a/4*3,b/4:b/4*3) + 50;



figure(1)
imshow(img)
figure(2)
imshow(img(a/4:a/4*3,b/4:b/4*3))



