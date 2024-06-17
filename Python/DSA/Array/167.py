def twoSumSorted(numbers, target):
    left,right=0,len(numbers)
    while left<right:
        if numbers[left]+numbers[right]==target:
            return [left+1,right+1]
        if numbers[left]+numbers[right]<target:
            left+=1
        if numbers[left]+numbers[right]>target:
            right-=1