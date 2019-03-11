clc
clear
syms x

P = x^15 - 120*x^14 + 6580*x^13 - 218400*x^12 + 4899622*x^11 - 78558480*x^10 + 928095740*x^9 - 8207628000*x^8 + 54631129553*x^7 - 272803210680*x^6 + 1009672107080*x^5 - 2706813345600*x^4 + 5056995703824*x^3 - 6165817614720*x^2 + 4339163001600*x - 1307674368000
p1 = 0.95
p2 = 1.05
tolerance = 0.00001

root = regulaFalsi(P,p1,p2,tolerance)


%%Functions
function result = regulaFalsi(P, p1, p2, tolerance)
     
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