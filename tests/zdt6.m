function f = zdt6(x)
%ZDT6 test problem
x(x>1)=1; %checking for the boundaries
x(x<0)=0;

n=numel(x);

f(1) = 1-(exp(-4*x(1))*sin(6*pi*x(1))^6);
g = 1+9*((sum(x(2:end))/(n-1))^0.25);
h=1-((f(1)/g)^2);
f(2)=h*g;

end