close all
clear all

x = [40 60 80 100 120];
y = [0.33 0.76 1.19 1.77 2.18];
p = polyfit(x,y,1)

x = x(:);
y = y(:);
n = length(x);
sx = sum(x); sy = sum(y);
sx2 = sum(x.*x);
sxy = sum(x.*y);
sy2 = sum(y.*y);
r2 = ((n*sxy-sx*sy)/sqrt(n*sx2-sx^2)/sqrt(n*sy2-sy^2))^2

f = polyval(p,x); 
plot(x,y,'.',x,f,'-') 
ylabel('Displacement(in)');
xlabel('Weight(lbs)');

legend('','y=0.0235x-0.6380');