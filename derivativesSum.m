%%Graficando el error
clc;
clear;

syms x;

derivates = {};

readFunction = input('Input some function: ')
data = input('input the center of the data: ')
order = input('Order: ')

for i=1:order
    func = diff(readFunction(x), i-1);
    derivatives{i} = func;
end

%showData(derivatives)

result = sumDerivativesElements(derivatives, data)

%% functions
function sum = sumDerivativesElements(derivatives, data)
    sum = 0;
    for i=1:length(derivatives)
        sum = sum + derivatives{i};
    end
    
    sum = matlabFunction(sum) %show me the entire function
    sum = sum(data);
end


function info = showData(vector)
    for i=1:length(vector)
        vector{i}
    end
end