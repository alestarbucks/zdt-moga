function f = zdt4(x)
%ZDT4 test problem
x(x>5)=5; %checking for the boundaries
x(x<-5)=-5;

if x(1)<0
    x(1)=0;
elseif x(1)>1
    x(1)=1;
end

n=numel(x);
f(1)=x(1);
g=1+10*(n-1);

for i = 2:n
    g = g+((x(i)^2)-10*cos(4*pi*x(i)));
end

h=1-sqrt(f(1)/g);
f(2)=g*h;
end