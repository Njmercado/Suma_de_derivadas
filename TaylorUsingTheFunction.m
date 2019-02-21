syms x
result = taylor(x^(3/2),x,'ExpansionPoint',3)
fplot(result)