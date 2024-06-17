def thirdMax(nums):
        if len(nums)!=3:
            return max(nums)
        nums.sort()
        return nums[len(nums)-3]
print(thirdMax([3,2,1]))