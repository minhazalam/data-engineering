# Lambda function
add_five_to_num = lambda n: n+5

# print('add_five_to_num: ',add_five_to_num(23))

input_strings_concat_lambda = lambda a, b : str(a) + str(b)
print(input_strings_concat_lambda('Minhaz ','Alam'))

lambda_a = lambda a, b:  a if a>b else b
print(lambda_a(8,51))

square_numbers = lambda x : x*x
list1=[1,2,3,4,5,6,7,8,9]
# print([i for i in map(square_numbers,list1)])
print(list(map(square_numbers,list1)))

list_a = [1, 2,3,4,5]
list_b=[5,4,3,2,1]

sum_two_lists = lambda x,y: x+y

result = list(map(sum_two_lists,list_a,list_b))
print(result)

# how to use reduce
from functools import reduce
list_x = [1,2,3,4,5,6,7,8,1]
sum_two_nums=lambda x,y:x+y
result=reduce(sum_two_nums,list_x)
print(result)

# filter function
# which element to be part of result
list_nums=[1,2,3,4,5,6,7,8,9,12,11]
lambda_odd = lambda x: x%2 != 0
result=filter(lambda_odd,list_nums)
print(list(result))

# list comprehension
list1=[7,3,2,4,6,90]
even_num_list=[i for i in list1 if i%2==0]
print(even_num_list)