classdef PuntoFijo
    properties
        func
        symbols = []
        level
        auxFunc
    end
    
    methods
        function obj = PuntoFijo(func, functionLevel)
            obj.func = func;
            obj.level = functionLevel;
            
            obj.auxFunc = obj.func;
            obj.auxFunc = char(obj.auxFunc)
            
            obj.transformedFunction();
        end
        function y = transformedFunction(obj)
            for i=1:obj.level+1
                obj.symbols = [obj.symbols sym(['x' num2str(i)])];
                obj.auxFunc = subs(obj.auxFunc, x, obj.symbols(i));
            end
            obj.auxFunc
        end
    end
end