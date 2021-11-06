% function f = zdt5(x)
% disp(x);
% fprintf('\n----------------------\n');
% f(1) = 1 + u(x(1));
% h = 1/f(1);
% g = sum(v(u(x(2:end))));
% f(2) = h*g;
% end
% 
% function y = u(x)
% y = sum(x);
% end
% 
% function z = v(x)
% if x<5
%     z = 2+x;
% else
%     z=1;
% end
% end

function f = zdt5(x)
    
    function y = u(x)
        y = sum(x);
    end
    
    function z = v(x)
        if x<5
            z = 2+x;
        else
            z = 1;
        end
    end
x(x<0)=0;
x(x>1073741823)=1073741823;

for i = 2:numel(x)
    if x(i)>31
        x(i)=31;
    end
end

x1=int2bit(x(1),30,true);
aux=int2bit(x,5,true);
f(1)=1+u(x1);

g = 0;

for i = 2:numel(x)
    g = g + v(sum(aux(:,i)));
end

h=1/f(1);
f(2)=g*h;
end