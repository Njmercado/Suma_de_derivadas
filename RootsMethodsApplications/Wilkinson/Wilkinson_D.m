clc
clear
syms x
hold on all
addpath('../') %%Take files from others folders, in this case i using 'Function.m'

Function = Function();

n = 20;

P = Function.Wilkinson(n);

Function.polynomial = P;

root = Function.NewtonRaphson([14 16])
froot = subs(P,x,root);

fplot(P,[0 n], 'linewidth',2)
plot(root,froot,'rO')
legend(['P(X) = ', char(P)])
grid on
grid minor