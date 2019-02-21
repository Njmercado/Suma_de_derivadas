clear 
clc

syms x;

%f = input('function: ')
%a = input('lower limit: ')
%b = input('higher limit: ')
%tolerance = input('tolerance: ')

f = x^4-3*x^3-2*x-7
a = 3
b = 4
tolerance = 0.02

sw = 1;
r = 0;
count = 0;
r_old = 0;
errors = [];
error = 0;

while(sw==1)
    
    r = (a+b)/2;
    count = count + 1;
    
    if(subs(f,x,a)*subs(f,x,r)==0)
        break;
    else
        if(subs(f,x,a)*subs(f,x,r)<0)
            b = r;
        else
            a = r;
        end       
    end
    
    errors = [errors error]
    error = abs((r-r_old))/r;
    r_old = r;
    sw = ~(error < tolerance);
end

plot(errors, 'linewidth', 2)