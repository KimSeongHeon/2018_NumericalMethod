img = imread('lena.jpeg');
[size1,size2] = size(img);
num = 5;
imshow(img);
hold on;
ptData = getPt(num);
x = zeros(6,1);
y = zeros(6,1);
x(1:5,1) = ptData(:,1);
x(6,1) = ptData(1,1);
y(1:5,1) = ptData(:,2);
y(6,1) = ptData(1,2);
mini = sqrt(size1^2+size2^2)+1;
for i = 1:num-1
    for j = i+1:num
        if(mini > sqrt((x(j,1)-x(i,1))^2+(y(j,1)-y(i,1))^2))
            mini = sqrt((x(j,1)-x(i,1))^2+(y(j,1)-y(i,1))^2);
            swap_num = j;
        end
    end
    tmp = x(i+1,1);
    x(i+1,1) = x(swap_num,1);
    x(swap_num,1) = tmp;
    tmp = y(i+1,1);
    y(i+1,1) = y(swap_num,1);
    y(swap_num,1) = tmp;
    mini = sqrt(size1^2+size2^2)+1;
end
a = 1:num+1;
sxy = 1:1/256:num+1;
s = spline(a,x,sxy);
s2 = spline(a,y,sxy);
plot(s,s2,'-r')
hold on;
round_s = round(s);
round_s2 = round(s2);
plot(round_s, round_s2, '-b')
[round_s_size_x, round_s_size_y] = size(round_s);
for i=1: round_s_size_y
    for j=1:round_s_size_y
        if(round_s(i)<round_s(j))
            tempa=round_s(i);
            round_s(i)=round_s(j);
            round_s(j)=tempa;
            tempb=round_s2(i);
            round_s2(i)=round_s2(j);
            round_s2(j)=tempb;
        end
    end
end
hold on;
plot(round_s, round_s2, '-g')
img2 = zeros(size1, size2); img2_t = uint8(img2);
for i=1: round_s_size_y-1
    if (round_s2(i) < round_s2(i+1))
            min_y = round_s2(i);
            max_y = round_s2(i+1);
            for j = min_y:max_y
             img2_t((min_y:max_y), round_s(i)) = img((min_y:max_y), round_s(i));
 
            end
    else
         max_y = round_s2(i);
         min_y = round_s2(i+1);
        for j = min_y:max_y
            img2_t((min_y:max_y), round_s(i)) = img((min_y:max_y), round_s(i));
 
        end
    end
end
figure
imshow(img2_t)
 