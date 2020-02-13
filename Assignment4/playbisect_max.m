f = @(x) 10+50*sin(7/18*pi)*x-4.9*x^2;

[root , err , iter] = bisect_max(f,100, 5, 10^(-6), 200)