def is_palindrome(n):
    rev=0
    temp=n

    while temp!=0:
        last_digit=temp%10
        rev=rev*10+last_digit
        temp=temp//10
    return n==rev

if __name__=='__main__':
    number=int(input('Enter number: '))
    print(is_palindrome(number))