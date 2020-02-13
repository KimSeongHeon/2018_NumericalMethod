
fplot('f1',[100,200])

g= 9.81;
c = 0.25;
t= 4;
v = 36;
f = @(m) sqrt(g*(m)/c)*tanh(sqrt(g*c/m)*t)-v;

[root,err,iter] = bisect(f,0,200,10^(-6),200)