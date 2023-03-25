def sum_n_numbers(n):
    sum=0
    for i in range(1,n+1):
        sum=sum+i

    return sum

print(sum_n_numbers(5))

sum_constant_time = lambda n:n*(n+1)/2
print(sum_constant_time(5))