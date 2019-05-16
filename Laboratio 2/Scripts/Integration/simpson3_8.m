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
    sum = sum + 3*ys(1,i);
end

sum = ys(1,1)+ys(1,n);
sum = sum*h