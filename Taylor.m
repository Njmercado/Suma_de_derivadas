%%Main
clc
clear all
hold all

syms x

%func = input('input a function: ')
%center = input('center: ')
%value = input('value to be evaluated: ')
%order = input('input the order: ')

func = @(x) exp(x);
func(x)
center = 2;
value = 1;
order = 20;
potencialFunctionResults = {};

for i=1:order
    denominator = factorial(i-1);
    derivative = matlabFunction(diff(func(x), i-1));
    derivative = derivative(center);
    x_a = (x-center)^(i-1);
    potencialFunctionResults{i} = ((derivative)*(x_a))/(denominator);
end

finalFunction = showPotencialFunctionResult(potencialFunctionResults);

%%Graficacion

fplot(func, 'y')
fplot(finalFunction, 'g')

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
