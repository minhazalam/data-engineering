number=int(input('Enter number: '))
count=0
while number >0:
    number=number//10
    count=count+1
print(f'Count of number: {count}')
