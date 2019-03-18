clc
clear
syms x
hold on all
Function = Function();

n = 15;

P = Function.Wilkinson(n);

Function.polynomial = P;

root = Function.NewtonRaphson()
froot = subs(P,x,root);

fplot(P,[0 n], 'linewidth',2)
plot(root,froot,'rO')
legend(['P(X) = ', char(P)])
grid on
grid minor