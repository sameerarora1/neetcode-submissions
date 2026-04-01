class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
        starts = []
        numSet = set(nums)

        for num in nums:
            if num - 1 not in numSet:
                starts.append(num)
        
        max_lcs = 0
        for start in starts:
            lcs = 1
            nextNum = start + 1
            while nextNum in numSet:
                lcs += 1
                nextNum += 1
            max_lcs = max(lcs, max_lcs)
        
        return max_lcs