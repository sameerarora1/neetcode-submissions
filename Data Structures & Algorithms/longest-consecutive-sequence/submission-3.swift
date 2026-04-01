class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numSet: Set<Int> = Set(nums)
        var starts: Array<Int> = []
        for num in nums {
            let prev = num - 1
            if !numSet.contains(prev) {
                starts.append(num)
            }
        }

        var max_lcs = 0
        for start in starts {
            var lcs = 1
            var next = start + 1
            while numSet.contains(next) {
                lcs += 1
                next += 1
            }
            max_lcs = max(lcs, max_lcs)
        }
        
        return max_lcs

    }
}
