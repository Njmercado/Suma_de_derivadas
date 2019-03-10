clc
clear

tolerance = input('Ingrese la tolerancia de este proceso: ')

n = 15

P = wilkinson(n)
root = regulaFalsi(P, 0.95, 1.05, tolerance)
froot = subs(P,x,root)

fplot(P,[0 n])
plot(root,froot,'rO')
legend(['P(X) = ', char(P)])
grid on
grid minor


%%Functions
function result = wilkinson(n)
    syms x
    func = 1;
    for i=1:n
        func = func*(x-i);
    end
    result = expand(func);
end

%Analizando la grafica me pude dar cuenta que los puntos que funcionarian
%para poder realizar el debido proceso son: '0,95' y '1,05'. Los puntos
%hallados, no son los unicos puntos que cumplen con la condición, hay la
%misma cantidad de punto que el doble del grado del polinomio.

function result = regulaFalsi(P, p1, p2, tolerance)
    sw = 0
    root = 0
    old_root = 0
    counter = 0
    while(sw)
        
        old_root = root
        fp1 = subs(P,x,p1)
        fp2 = subs(P,x,p2)
        root = (fp1*p2-fp2*p1)/(fp1-fp2)
        froot = subs(P,x,root)
        
        if(froot*fp1==0)
            sw = 1
        else
            if(froot*fp1<0)
                p2 = root
            else
                p1 = root
            end
            
            error = abs(root-old_root)/root
            sw = ~(error<tolerance)
        end
        
        counter = counter + 1
    end
    
    print(['Se realizaron ', char(counter), ' iteraciones.'])
    result = root
end