class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        maxProfit = 0
        n = len(prices)
        l, r = 0, 1
        while r < n:
            profit = prices[r] - prices[l]
            if profit >= 0:
                if profit > maxProfit:
                    maxProfit = profit
                    print(f"{profit} bwtn {l} and {r}")
            else:
                print()
                l = r
            r += 1

        return maxProfit