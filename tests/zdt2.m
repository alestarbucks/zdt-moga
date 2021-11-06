function f = zdt2(x)
%ZDT2 test problem
x(x>1)=1; %checking for the boundaries
x(x<0)=0;
n=numel(x);
f(1)=x(1);
g=1+((9/(n-1))*sum(x(2:end)));
h=1-((f(1)/g)^2);
f(2)=g*h;
end