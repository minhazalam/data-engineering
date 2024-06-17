def removeDuplicates(nums):
    nums_set=set(nums)
    nl=list(nums_set)
    print(type(nl))
    return nl

print(removeDuplicates([1,1,2]))