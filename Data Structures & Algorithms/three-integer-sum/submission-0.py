class Solution:
    def threeSum(self, nums: List[int]) -> List[List[int]]:
        n = len(nums)
        nums.sort()
        res = []
        for i in range(0, n):
            iVal = nums[i]
            if i > 0 and iVal == nums[i-1]:
                continue
            j = i + 1
            k = n - 1
            while j < k:
                jVal = nums[j]
                kVal = nums[k]
                total = iVal + jVal + kVal
                if total < 0:
                    j += 1
                elif total > 0:
                    k -= 1
                else:
                    res.append([iVal, jVal, kVal])
                    while j < k and jVal == nums[j]:
                        j += 1
                    while j < k and kVal == nums[k]:
                        k -= 1

        return res