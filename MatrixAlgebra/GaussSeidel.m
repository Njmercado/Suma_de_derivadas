clear all
clc

A = [5,1,1; 3,7,2; 1,4,10]; %Matriz por defecto. Matriz de prueba
b = [4;5;1]; 
x = zeros(3,1);

n = size(x, 1); %Numero de incognitas

error = inf;
tol = 1e-5;
itr = 0;

plotGauss = []; %Errores, durante cada iteración para su respectiva grafica

while error > tol
    
    x_old = x;
    
    for i=1:n %Iterar sobre las variables que formen la matriz
        
        sum = 0;
        
        for j=1:i-1 %Antes de la incognita x
            
            sum = sum + A(i,j)*x(j); 
        end
        
        for j=i+1:n %Despues de la incognita x
            
            sum = sum + A(i,j)*x(j); 
        end
        
        x(i) = (1/A(i,i))*(b(i) - sum);
    end
    
    itr = itr+1;
    error = norm(x_old-x);
    plotGauss = [plotGauss error];
end

hold all

plot(1:itr, plotGauss(1:itr), 'linewidth', 2)
x