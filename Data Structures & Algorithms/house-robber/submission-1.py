class Solution:
    def rob(self, nums: List[int]) -> int:
        # dp[i] is max amount of money robbings houses 0...i
        n = len(nums)
        dp = [0] * n
        dp[0] = nums[0]
        if n > 1:
            dp[1] = max(dp[0], nums[1])

            for i in range(2, n):
                n1 = nums[i]
                dp[i] = max(dp[i-2] + n1, dp[i-1])

        return dp[n-1]