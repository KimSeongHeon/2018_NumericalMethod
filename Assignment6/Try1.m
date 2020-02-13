clear
img = imread('lena.jpeg');
imshow(img)
hold on;
ptData = pData(4)
 
 
 
ptData2 = zeros(5,2);
ptData2 = ptData(:,:)
ptData2(5,:) = ptData(1,:)
 
hold on;
plot(ptData2(:,1),ptData2(:,2),'linewidth',2)
xd = ptData(:,1)
yd = ptData(:,2)
xd(5,1) = xd(1,1);
yd(5,1) = yd(1,1);

minx = min(xd); 
maxx = max(xd);
miny = min(yd);
maxy = max(yd);

img2 = uint8(zeros(256,256));
 for i=minx:maxx
     for j=miny:maxy
         img2(j,i) = img(j,i);
     end
 end
 
 figure(2)
 imshow(img2);


figure(2)
plot(X1(1,:),Y1(1,:))
hold on;
plot(X2(1,:),Y2(1,:));
hold on;
plot(X3(1,:),Y3(1,:))
hold on;
plot(X4(1,:),Y4(1,:))