function [x,y] = f2(a,b,c,d)
if(a-c == 0)
    disp("교점이 존재하지 않습니다.");
else
    x= (d-b)/(a-c);
    y= (d-b)/(a-c)*a+b;
    fprintf(' 교점은(%f,%f) 입니다.',x,y);
end

