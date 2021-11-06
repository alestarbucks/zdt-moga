function f = zdt3(x)
%ZDT3 test problem
x(x>1)=1; %checking for the boundaries
x(x<0)=0;
n=numel(x);
f(1)=x(1);
g=1+(9/(n-1))*sum(x(2:end));
h=1-sqrt(f(1)/g)-((f(1)/g)*sin(10*pi*f(1)));
f(2)=g*h;
end