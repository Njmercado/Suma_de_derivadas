clear all
clc
syms x

x = input('Valores de X: ')
y = input('Valores de Y: ')

[m n] = size(x);

sumx = 0;
sumx2 = 0;
sumy = 0;
sumxy = 0;
st = 0;
sr = 0;

for i=1:n
    sumx = sumx + x(1, i);
    sumy = sumy + y(1, i);
    sumxy = sumxy + x(1, i)*y(1, i);
    sumx2 = sumx2 + x(1, i)^2;
end

xm = sumx/n;
ym = sumy/n;

m = (n*sumxy - sumx*sumy)/(n*sumx2 - sumx^2);
b = ym-m*xm;

for j=1:n
    st = st + (y(1, j) - ym)^2;
    sr = sr + ( y(1, i) - m*x(1, i) - b)^2;
end

sxy = sqrt(sr/(n-2));
r2 = (st-sr)/st;

f = @(x) m*x+b
