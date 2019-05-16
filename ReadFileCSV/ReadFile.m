clc
clear
close all
hold on
syms x

%x = [11.6 4.5 8.5 4.8 2.9 3.9 0.7 8.5 3.6 5.3 7.3 6.3 2.5 8.8 3.7 1.9 9.4 4.7 3.6 2 9.7 6.4 11.9];
%y = [12.67 5.45 24.33 8.62 0.05 6.12 0 25.26 1.7 10.77 7.6 8.99 1.86 12.71 3.26 1.49 23.37 11.36 3.12 1.86 18.87 31.85 31.54];


datos = xlsread('Datos_Chocolate.xlsx');
save datos_chocolate.mat datos
load datos_chocolate.mat
chocolate = datos(:,1);
premiados = datos(:,2);

x = chocolate';
y = premiados';

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

disp('Resultado Final: ')

m = (n*sumxy - sumx*sumy)/(n*sumx2 - sumx^2)
b = ym-m*xm

for j=1:n
    st = st + (y(1, j) - ym)^2;
    sr = sr + ( y(1, i) - m*x(1, i) - b)^2;
end

sxy = sqrt(sr/(n-2));
r2 = (st-sr)/st;

disp('Dispersion de los datos: ')
r2

syms x
f = m*x +b %Funcion de regresion lineal

fplot(@(x) m*x+b, 'r-')% Grafica de la funcion regresion linea.
plot(chocolate,premiados,'bo') %Grafica inicial, valores dispersos