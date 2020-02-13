function f = f1(m)
g= 9.81;
c = 0.25;
t= 4;
v = 36;
f = sqrt(g*(m)/c)*tanh(sqrt(g*c/m)*t)-v;