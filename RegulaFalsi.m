function result = RegulaFalsi(P, p1, p2, tolerance)
     
    syms x

    sw = true;
    root = 0;
    old_root = 0;
    counter = 0;
    while(sw)
        
        fp1 = subs(P,x,p1);
        fp2 = subs(P,x,p2);
        root = (fp1*p2-fp2*p1)/(fp1-fp2);
        froot = subs(P,x,root);
        
        if(froot*fp1==0)
            break
        else
            if(froot*fp1<0)
                p2 = root;
            else
                p1 = root;
            end
            
            error = abs(root-old_root)/root;
            sw = ~(error < tolerance);
            old_root = root;
        end
        
        counter = counter + 1
    end
    fprintf('Se realizaron %1.0f iteraciones \n', counter)
    result = root;
end