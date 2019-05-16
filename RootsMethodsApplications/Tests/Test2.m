clc
clear
syms x
hold on all
grid minor
addpath('../');
Function = Function();

P = Function.Wilkinson(20);
Function.polynomial = P;
Function.NewtonRaphson([14 16])