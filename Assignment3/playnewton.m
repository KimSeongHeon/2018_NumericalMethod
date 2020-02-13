f = @(m) sqrt(g*(m)/c)*tanh(sqrt(g*c/m)*t)-v;

syms m;
y = @(m) sqrt(g*(m)/c)*tanh(sqrt(g*c/m)*t)-v;
diff(y,m)
df = @(m) (981*tanh(4*(981/(400*m))^(1/2)))/(50*((981*m)/25)^(1/2)) + (981*(tanh(4*(981/(400*m))^(1/2))^2 - 1)*((981*m)/25)^(1/2))/(200*m^2*(981/(400*m))^(1/2));

[x0 , err , iter] = newton(f,df,2,10^(-6),50)