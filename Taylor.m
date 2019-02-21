%%Main
clc
clear all
hold all

syms x

%func = input('input a function: ')
%center = input('center: ')
%value = input('value to be evaluated: ')
%order = input('input the order: ')

func = @(x) x^(3/2);
center = 3;
value = 10;
order = 5;
interval = [1 10000];
potencialFunctionResults = {};

for i=1:order
    denominator = factorial(i-1);
    derivative = diff(func(x), i-1);
    x_a = (x-center)^(i-1);
    potencialFunctionResults{i} = ((derivative)*(x_a))/(denominator);
end

finalFunction = showPotencialFunctionResult(potencialFunctionResults)
func
%%Graficacion

fplot(func(x),'Linewidth', 2)
fplot(finalFunction, '+')

%ttaylor = taylor(func(x), 'ExpansionPoint', center)
%fplot(ttaylor, 'r')

legend(['RealFunction(x)= ', char(func(x))],['TaylorAproximation(x)= ',char(finalFunction)])

%%Prueba 

finalFunction = matlabFunction(finalFunction);

final = finalFunction(value)
real = func(value)

%%Functions
function result = showPotencialFunctionResult(x)
    result = 0;
    for i=1:length(x)
        result = result + x{i};
    end
end
