function [x,y] = f2(a,b,c,d)
if(a-c == 0)
    disp("������ �������� �ʽ��ϴ�.");
else
    x= (d-b)/(a-c);
    y= (d-b)/(a-c)*a+b;
    fprintf(' ������(%f,%f) �Դϴ�.',x,y);
end

