function [root , err , iter]=bisect_max(f1,xl, s, tolerr, maxiter)
xm = xl+s;
xh = xm+s;
if nargin <3, error('insufficient arguments'), end
if nargin < 5, maxiter=50; end
if nargin <4, tolerr=0.001; end
fprintf('\n')
disp('-----------------------------------------------------------------')
disp(' iter xl xh xm f(xm) err ')
disp('-----------------------------------------------------------------')
iter = 0;
xm = xl;
while(1)
xm = xl+s;
xh = xm+s;
err=abs(xh-xl)*0.5;
iter=iter+1;
fprintf('%2.0f %10.4f %10.4f %12.6f %10.6f %10.6f\n', iter, xl, xh,xm...
,feval(f1,xm), err )
if f1(xm) > f1(xl) && f1(xm)>f1(xh)
s = s/2;
elseif f1(xm)<f1(xl) &&  f1(xm)>f1(xh)
xl = xl - s ;
else
xl = xm;
end
if err <= tolerr || iter >= maxiter, break, end
end
root=xm;
