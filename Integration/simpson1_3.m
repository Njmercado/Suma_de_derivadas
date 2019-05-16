clear all;
clc;
syms x;

func = input('Funcion a ser integrada: ')
a = input('Limite inferior: ')
b = input('Limite superior: ')
ys = input('Valores en y: ')

[m,n] = size(ys);
h = (b-a)/n;
h = h/3;

sum = 0;

for i=2:n-1
    if mod(i, 2) == 0
        sum = sum + 4*ys(1,i);
    else
        sum = sum + 2*ys(1,i);
    end
    
end

sum = ys(1,1)+ys(1,n);
sum = sum*h
