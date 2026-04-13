class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        let n = prices.count
        guard n > 1 else { return 0 }

        var maxProfit = 0
        var l = 0
        var r = 1
        while r < n {
            let profit = prices[r] - prices[l]
            if profit > 0 {
                maxProfit = max(profit, maxProfit)
            } else {
                l = r
            }
            r += 1
        }

        return maxProfit
    }
}
