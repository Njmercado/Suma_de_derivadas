clc
clear
syms P(x)
addpath('../') %%Take files from others folders, in this case i using 'Function.m'

Function = Function();

n = input('Que grado, de la función de Wilkinson, desea obtener?: ');
P(x) = Function.Wilkinson(n)