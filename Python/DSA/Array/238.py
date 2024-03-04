def productExceptSelf(nums):
        res=[]
        product=1
        for i in range(len(nums)):
            product *=nums[i]
        for num in nums:
            res.append(product//num)
        return res

print(productExceptSelf([1,2,3,4]))