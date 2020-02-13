clear
img = imread('lena.jpeg');
[size1,size2] = size(img);
num = 5;
imshow(img);
hold on;
ptData = pData(num);
x = zeros(6,1);
y = zeros(6,1);
x(1:5,1) = ptData(:,1);
x(6,1) = ptData(1,1);
y(1:5,1) = ptData(:,2);
y(6,1) = ptData(1,2);
a = 1:num+1;
sxy = 1:1/400:num+1;
s = spline(a,x,sxy);
s2 = spline(a,y,sxy);
plot(s,s2,'-r')

[row,col] =size(s)
mins = min(s)
maxs = max(s)
mins2 = min(s2)
maxs2 = max(s2)

for i1=1:col
    if(x(2,1) == s(1,i1))
         break;
    end
end

for j=1:i1
    X1(1,j) =round(s(1,j))
    Y1(1,j) = s2(1,j);
end

for i2=i1:col
    if(x(3,1) == s(1,i2))
         break;
    end
end
z=1
for j=i1:i2
    X2(1,z) = round(s(1,j));
    Y2(1,z) = s2(1,j);
    z=z+1
end

for i3=i2:col
    if(x(4,1) == s(1,i3))
         break;
    end
end
z=1
for j=i2:i3
    X3(1,z) =round(s(1,j));
    Y3(1,z) = s2(1,j);
    z=z+1
end

for i4=i3:col
    if(x(5,1) == s(1,i4))
         break;
    end
end
z=1
for j=i3:i4
    X4(1,z) = round(s(1,j));
    Y4(1,z) = s2(1,j);
    z=z+1;
end

for i5=i4:col
    if(x(6,1) == s(1,i5))
         break;
    end
end
z=1
for j=i4:i5
    X5(1,z) = round(s(1,j));
    Y5(1,z) = s2(1,j);
    z=z+1;
end

[a,sy1] = size(Y1);
 [a,sy2] = size(Y2);
 [a,sy3] = size(Y3);
 [a,sy4] = size(Y4);
 [a,sy5] = size(Y5);
 
  
  z=1;
  
    
     
for i=round(mins):round(maxs)
    
    a1= 0;
     a2=0;
     a3=0;
     a4=0;
     a5 = 0; 
     
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

for j= 1:sy5
         if(i==X5(1,j))
            a5 = Y5(1,j);
         end
end
ah = [a1 a2 a3 a4 a5;];
    ah = sort(ah,'descend');
    
bx(1,z)=i;
by1(1,z)=ah(1,1);
by2(1,z)=ah(1,2);

z=z+1;


 end
 
 img2 = uint8(zeros(256,256));
 [r,c] = size(bx);
for k = 1: c
 for z=round(mins2):1:round(maxs2)
      
     if(by2(1,k)<=z && z<=by1(1,k))
        img2(z,bx(1,k)) = img(z,bx(1,k));
     else
         img2(z,bx(1,k)) = 0;
     end
     
 end
end
figure(3)
 imshow(img2);
 
