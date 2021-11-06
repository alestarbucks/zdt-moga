function f = zdt1(x)
%ZDT1 test problem
x(x>1)=1; %checking for the boundaries
x(x<0)=0;
n=numel(x);
f(1)=x(1);
g=1+(9/(n-1))*sum(x(2:end));
f(2)=g*(1-sqrt(f(1)/g));
end