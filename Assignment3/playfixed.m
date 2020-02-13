g= 9.81;
c = 0.25;
t= 4;
v = 36;

f = @(m) sqrt(g*(m)/c)*tanh(sqrt(g*c/m)*t)-v;
g1 = @(m) (c*v^2)/(g*(tanh(sqrt(g*c/m)*t))^2) % g(x)
g2 = @(x) x



[u , err , iter] = fixed(g1,100,10^(-6),100)