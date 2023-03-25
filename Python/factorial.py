def factorial_iterative(n):
    res=1
    for i in range(2,n+1):
        res=res*i
    return res


def factorial_recurssive(n):
    if n==0:
        return 1
    return n*factorial_recurssive(n-1)

if __name__=='__main__':
    n=5
    print(factorial_recurssive(n))