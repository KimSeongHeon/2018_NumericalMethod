function [x1,x2]=f1(a,b,c)

poly = b.^2-4*a*c;
x= -20:1:20;
plot(x,a*x.^2+b*x+c)
if a==0
    disp("한개의 근을 가집니다");
    x1 = -c/b
elseif poly >0
    disp("두개의 실근을 가집니다");
    x1 = (-b+sqrt(poly))/(2*a)
    x2 = (-b-sqrt(poly))/(2*a)
elseif poly == 0
     disp("중근을 가집니다");
          x1 = -b/(2*a)

else
    disp("근이 존재하지 않습니다(허근)");
end



    

    