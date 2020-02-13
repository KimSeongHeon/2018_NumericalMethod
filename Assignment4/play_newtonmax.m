f = @(x) 10+50*(sin(7/18*pi))*x-4.9*x^2;

df = @(x) 50*(sin(7/18*pi))- (49*x)/5;

[root , err , iter] = newton_max(f, df ,5, 5 ,10^(-6),300)