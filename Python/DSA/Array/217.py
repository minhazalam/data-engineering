def containsDuplicate(nums):
        # hash_map={}
        # for idx, num in enumerate(nums):
        #     if num in hash_map:
        #         return True
        #     else:
        #         hash_map[num]=idx
        # return False
        nums_set=set(nums)
        return len(nums)==len(nums_set)
print(containsDuplicate([1,2,3,1]))