clc
clear
syms P(x)

n = input('Que grado, de la función de Wilkinson, desea obtener?: ');
P(x) = wilkinson(n)

%%Functions
function result = wilkinson(n)
    syms x
    func = 1;
    for i=1:n
        func = func*(x-i);
    end
    result = expand(func);
end