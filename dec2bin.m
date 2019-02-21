%%Decimal to binary
v = input('numero decimal:');
longitud_binario = ceil(log2(v))+1;
r = zeros(1,longitud_binario);
for i=1:longitud_binario
   r(1,i) = mod(v,2);
    v = floor(v/2);
end
r = fliplr(r)

%%Binary to decimal
v = input('binary')
v = fliplr(v);
result = 0;
for i=1:length(v)
   result = result + v(i).*2^(i-1);
end

result