f = @(x) 10+50*sin(7/18*pi)*x-4.9*x^2;
g = @(x) (x-2)^3-3*x+17;
[root , err , iter] = brent_max(g, 100 ,200, 300 ,10^(-6),100)

