function [x0 , err , iter] = halseon(f, x0, x1, tol, n)
iter=0;
u=feval(f,x0);
v=feval(f,x1);
err=abs(x1-x0);
disp('-----------------------------------------------')
disp(' iter xn       f(xn    f(xn+1)-f(xn)     |xn+1-xn|/|xn+1|')
disp('-----------------------------------------------')
fprintf('%2.0f %12.6f %12.6f\n ', iter, x0, u)
fprintf('%2.0f %12.6f %12.6f %12.6f %12.6f\n ', iter, x0, v,v-u,err)

while(err>tol)&&(iter<=n)&&(v-u~=0)
x = x1-v*(x1-x0)/(v-u);
x0=x1;
u=v;
x1 = x;
v=feval(f,x1);
err = abs(x1-x0);
iter=iter+1;
fprintf('%2.0f %12.6f %12.6f %12.6f %12.6f\n', iter, x1, v,v-u,err)
end
if((v-u)==0)
disp('division by zero')
end
if(iter>n)
disp('Method failed to converge')
end