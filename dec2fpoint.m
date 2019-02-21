number = input('')

real_part = floor(number);
decimal_part = number - floor(number);

binary_real_part = fliplr(de2bi(real_part));
binary_decimal_part = zeros(1,20);

i=1;

while decimal_part ~= 0 && i <= 20
    decimal_part = decimal_part*2;
    binary_decimal_part(i) = floor(decimal_part);
    decimal_part = decimal_part - floor(decimal_part);
    i = i+1;
end



%% Pass binary decimal part to decimal number.
sum = 0;

for i=1:length(binary_decimal_part)
    sum = sum + binary_decimal_part(i)*(2^(-i));
end

sum;