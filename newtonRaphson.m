syms x
f = @(x) x^2+x-1
df = @(x) 2*x+1

result = @(x) x - f(x)/df(x)

domain = [-Inf Inf]
range = [0 Inf]

x_0 = 3
n = 1

while (result(x_0) ~= x_0 && n ~= 100)
    x_0 = result(x_0)
    n = n+1
end

x_0
