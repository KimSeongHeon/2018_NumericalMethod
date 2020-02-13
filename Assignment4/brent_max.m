function [root , err , iter]=bisect_max(f,a,b,c,tolerr,maxiter)
if nargin <3, error('insufficient arguments'), end
if nargin < 5, maxiter=50; end
if nargin <4, tolerr=0.001; end
fprintf('\n')
disp('-----------------------------------------------------------------')
disp(' iter xm pre_xm err ')
disp('-----------------------------------------------------------------')
iter = 0;
xm = 0;
while(1)
pre_xm = xm;
xm = b-1/2*((b-a)^2*(feval(f,b)-feval(f,c))-(b-c)^2*(feval(f,b)-feval(f,a)))/((b-a)*(feval(f,b)-feval(f,c))-(b-c)*(feval(f,b)-feval(f,a)));
err=abs(pre_xm-xm);
iter=iter+1;
fprintf('%2.0f %10.4f %10.4f %12.6f %10.6f %10.6f\n', iter, xm, pre_xm,err)
fprintf('\n')
if xm<a
c=b; b=a; a=xm;
elseif xm<b
c=b; b=xm ;
elseif xm<c
a=b;b=xm;
else
    a=b;b=c;c=xm;
end
if err <= tolerr || iter >= maxiter, break, end
end
root=xm;


