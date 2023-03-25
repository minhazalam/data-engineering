# NAIVE SOLUTION
def count_zeroes_naive(n):
    fact=1
    for i in range(2,n+1):
        fact=fact*i

    res=0
    while(fact%10==0):
        res=res+1
        fact=fact//10

    return res


def count_zeroes_eff(n):
    res=0
    i=5
    while i<=n:
        res=res+n//i
        i=i*5
    return res

if __name__=='__main__':
    n=251
    print(count_zeroes_eff(n))
