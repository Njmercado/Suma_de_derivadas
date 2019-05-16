%inicio
%programa
%un vecto columna
op=0;
while op ~= 2
    op=menu('menu', 'Sistema de ecuaciones', 'Salir');
    if op== 2
         fprintf('~A   ~D  ~  I  ~  O  ~   S~   \n')
    else
        sym  el e2
      Vec_sistema_simb=input('ingresar  el vector columna de incognita:');
      F_simb=input('ingrese el vector columna del sistema de ecuaciones:');
      eps=input('Error:  ');
      x0=input('ingresar el vector columna  de los vectores iniciales:   ');
      max_interaciones= input('ingresar el numero de iteraciones:   ');
      vec_solucion=nr_multiva(F_simb,eps,x0,max_interaciones,vec_sistema_simb);
    end
end
%fin