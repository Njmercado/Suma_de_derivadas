clc
clear
syms x
addpath('../');
Function = Function();
hold on all
grid minor

%Equations
P1 = x^2-x-2;%Ing.Sistemas --> Primer polinomio
P2 = 12*x-2*x^2;%Ing. Electronica --> Segundo polinomio
P3 = sqrt(3*x^2)-1.5;%Ing. Civil --> tercer polinomio

%   CLOSED METHODS

%   BISECTION
disp('BISECTION')
disp('PRIMER POLINOMIO')
Function.polynomial =  P1;
tic
root1 = Function.Bisection(-1.5, -0.5)
toc
disp('SEGUNDO POLINOMIO')
Function.polynomial =  P2;
tic
root2 = Function.Bisection(5, 6)
toc
disp('TERCER POLINOMIO')
Function.polynomial =  P3;
tic
root3 = Function.Bisection(-2, 0)
toc

%   REGULA FALSI
disp('')
disp('REGULA FALSI')
disp('PRIMER POLINOMIO')
Function.polynomial =  P1;
tic
root1 = Function.RegulaFalsi(-1.5, -0.5)
toc
disp('SEGUNDO POLINOMIO')
Function.polynomial =  P2;
tic
root2 = Function.RegulaFalsi(5, 6)
toc
disp('TERCER POLINOMIO')
Function.polynomial =  P3;
tic
root3 = Function.RegulaFalsi(-2, 0)
toc

%   Methodos Abiertos
%   Newton-Raphson
disp('NEWTON-RAPHSON')
disp('PRIMER POLINOMIO')
Function.polynomial =  P1;
tic
root1 = Function.NewtonRaphson([-1 0])
toc
disp('SEGUNDO POLINOMIO')
Function.polynomial =  P2;
tic
root2 = Function.NewtonRaphson([5 6])
toc
disp('TERCER POLINOMIO')
Function.polynomial =  P3;
tic
root3 = Function.NewtonRaphson([-2 0])
toc

%   Secante
disp('SECANTE')
disp('PRIMER POLINOMIO')
Function.polynomial =  P1;
tic
root1 = Function.Secant(-1.5, -0.5)
toc

disp('SEGUNDO POLINOMIO:')
disp('DIVERGE')

disp('TERCER POLINOMIO:')
Function.polynomial =  P3;
tic
root3 = Function.Secant(-2, 0)
toc

%   Punto Fijo
disp('PUNTO FIJO:')
disp('PRIMER POLINOMIO:')
G1 = sqrt(x+2)
Function.polynomial =  G1;
x1 = -1
tic
root1 = Function.FixedPoint(x1)
toc

disp('SEGUNDO POLINOMIO:')
disp('DIVERGE')

disp('TERCER POLINOMIO:')
disp('DIVERGE')