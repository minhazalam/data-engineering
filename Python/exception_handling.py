try:
    a=10/0
    print(a)
except Exception as err:
    print(err)
    # print('Divide by zero occured!')