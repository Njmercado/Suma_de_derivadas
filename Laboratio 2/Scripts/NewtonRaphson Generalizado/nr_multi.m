fuction vec_inco_son = nr_multi(Fsimb,eps,x_k,max_interaciones,vec_inco_sim)
num_ele_f =length(F_simb);
num_ele_vec = length(vec_inco_simb);
 if num_ele_F == num_ele_vec
   for fila=1:1:num_ele_F
     for columna=1:1:num_ele_F
      J_sim(fila,columna)=diff(F_simb(fila)),vec_inco_simb(columna));
     end
   end
   for iteracion=1:1:max_iteraciones
       fprintf('------------\n')
       fprintf('iteracion No.   %d   \n', iteracion)
       J_num=double(subs(J_simb,[vec_inco_simb],[x_k]))
       F_num=double(subs(F_simb,[vec_inco_simb],[x_k]))
       h=J_num\(-F_num)
       x_k_mas_l=x_k+h
       criterio=Norm(x_k_mas_l-x_k)
       if criterio<=eps
            fprintf('Metodo Converge   \n')
            vec_inc_sol=x_k_mas_l;
            return
       else
       x_k=x_k_mas_l
       end
   end
else
 fprintf('el sistema de ecuaciones no lineales no es cuadrado \n')
end