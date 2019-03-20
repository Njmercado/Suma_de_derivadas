clc
clear
syms x
hold on all
addpath('../') %%Take files from others folders, in this case i using 'Function.m'

Function = Function();

n = 20;

P = Function.Wilkinson(n);

Function.polynomial = P;

root = Function.RegulaFalsi(14.95, 15.05)
froot = subs(P,x,root)

fplot(P,[0 n], 'linewidth', 2)
plot(root,froot,'rO')
legend(['P(X) = ', char(P)])
grid on
grid minor

%Analizando la grafica me pude dar cuenta que los puntos que funcionarian
%para poder realizar el debido proceso son: '14,95' y '15,05'. Los puntos
%hallados no son los unicos puntos que cumplen con la condición. Hay la
%misma cantidad de punto que el doble del grado del polinomio.
