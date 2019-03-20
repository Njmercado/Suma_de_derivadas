clc
clear
syms x
addpath('../') %%Take files from others folders, in this case i using 'Function.m'
Function = Function();

P = sqrt(3*x^2)-1.5;
Function.polynomial = P;
root = Function.NewtonRaphson([0 1.5]);
fprintf('Root: %f \n', root)
Function.Counter