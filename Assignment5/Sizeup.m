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

 j=1;
 xd1 = [xd(1,1),xd(2,1);];
 yd1 = [yd(1,1),yd(2,1);];
 
 if(xd(1,1)<xd(2,1))
for i1=xd(1,1):1:xd(2,1)
    X1(1,j) = i1;
    Y1(1,j) = spline(xd1,yd1,i1);
    j=j+1;
end

 else
     for i1=xd(1,1):-1:xd(2,1)
    X1(1,j) = i1;
    Y1(1,j) = spline(xd1,yd1,i1);
    j=j+1;
   
end
 end
 
 j=1;
  xd2 = [xd(2,1),xd(3,1);];
 yd2 = [yd(2,1),yd(3,1);];
 
 if(xd(2,1)<xd(3,1))
     
     for i1=xd(2,1):1:xd(3,1)
    X2(1,j) = i1;
    Y2(1,j) =  spline(xd2,yd2,i1);
    j=j+1;
  
end

 else
     for i1=xd(2,1):-1:xd(3,1)
    X2(1,j) = i1;
    Y2(1,j) = spline(xd2,yd2,i1);
    j=j+1;
   
end
  end
  
  j=1;
   xd3 = [xd(3,1),xd(4,1);];
 yd3 = [yd(3,1),yd(4,1);];
  if(xd(3,1)<xd(4,1))
     
     for i1=xd(3,1):1:xd(4,1)
    X3(1,j) = i1;
    Y3(1,j) =  spline(xd3,yd3,i1);
    j=j+1;
    
end

 else
     for i1=xd(3,1):-1:xd(4,1)
    X3(1,j) = i1;
    Y3(1,j) =  spline(xd3,yd3,i1);
    j=j+1;
    
end
  end
  
  j=1;
  xd4 = [xd(4,1),xd(5,1);];
 yd4 = [yd(4,1),yd(5,1);];
  if(xd(4,1)<xd(5,1))
     
     for i1=xd(4,1):1:xd(5,1)
    X4(1,j) = i1;
    Y4(1,j) = spline(xd4,yd4,i1);
    j=j+1;
    
end

 else
     for i1=xd(4,1):-1:xd(5,1)
    X4(1,j) = i1;
    Y4(1,j) = spline(xd4,yd4,i1);
    j=j+1;
   
 end
  end
  
   [a,sy1] = size(Y1);
 [a,sy2] = size(Y2);
 [a,sy3] = size(Y3);
 [a,sy4] = size(Y4);

 minx = min(xd);
 maxx= max(xd);
 maxy= max(yd);
 miny = min(yd);
 
%  img2 = uint8(zeros(256,256));
%  for i=minx:maxx
%      for j=miny:maxy
%          img2(j,i) = img(j,i);
%      end
%  end
%  
%  figure(2)
%  imshow(img2);



 for i=minx:maxx
     a1 = 0;
     a2=0;
     a3=0;
     a4=0;
    
     
     for j= 1:sy1
         if(i==X1(1,j))
             a1 = Y1(1,j);
         end
     end
     for j= 1:sy2
         if(i==X2(1,j))
             a2 = Y2(1,j);
         end
     end
     for j= 1:sy3
         if(i==X3(1,j))
             a3 = Y3(1,j);
         end
          end
for j= 1:sy4
         if(i==X4(1,j))
            a4 = Y4(1,j);
         end
end
ah = [a1 a2 a3 a4;];
    ah = sort(ah,'descend');
    
bx(1,i-minx+1)=i;
by1(1,i-minx+1)=ah(1,1);
by2(1,i-minx+1)=ah(1,2);
 end
 
 img2 = uint8(zeros(256,256));
 [r,c] = size(bx);
for j = 1: c
 for z=miny:1:maxy
     if(by2(1,j)<=z && z<=by1(1,j))
         img2(z,bx(1,j)) = img(z,bx(1,j));
     else
         img2(z,bx(1,j)) = 0;
     end
     
 end
end
figure(3)
 imshow(img2);
 
  figure(2)
plot(X1(1,:),Y1(1,:))
hold on;
plot(X2(1,:),Y2(1,:));
hold on;
plot(X3(1,:),Y3(1,:))
hold on;
plot(X4(1,:),Y4(1,:))
