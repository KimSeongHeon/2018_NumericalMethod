function [u , err , iter] = fixed(g,x0,tol,n)
iter=0;
u=feval(g,x0);
err=abs(u-x0);
disp('------------------------------------------')
disp(' iter x g(x) |xn+1-xn|')
disp('------------------------------------------')
fprintf('%2.0f %12.6f %12.6f\n', iter, x0, u)
while(err>tol)&&(iter<=n)
x1= feval(g,x0);
err=abs(x1-x0);
x0=x1;
u=feval(g,x0);
iter=iter+1;
fprintf('%2.0f %12.6f %12.6f %12.8f\n', iter, x0, u, err)
end
if(iter>n)
disp('Method failed to converge')
end
