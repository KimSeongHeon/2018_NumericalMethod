function [x1,x2]=f1(a,b,c)

poly = b.^2-4*a*c;
x= -20:1:20;
plot(x,a*x.^2+b*x+c)
if a==0
    disp("�Ѱ��� ���� �����ϴ�");
    x1 = -c/b
elseif poly >0
    disp("�ΰ��� �Ǳ��� �����ϴ�");
    x1 = (-b+sqrt(poly))/(2*a)
    x2 = (-b-sqrt(poly))/(2*a)
elseif poly == 0
     disp("�߱��� �����ϴ�");
          x1 = -b/(2*a)

else
    disp("���� �������� �ʽ��ϴ�(���)");
end



    

    