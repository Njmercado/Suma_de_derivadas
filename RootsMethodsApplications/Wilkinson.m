function result = Wilkinson(n)
    syms x
    func = 1;
    for i=1:n
        func = func*(x-i);
    end
    result = expand(func);
end