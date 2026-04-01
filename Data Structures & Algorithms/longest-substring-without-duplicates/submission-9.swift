class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var left = 0
        var maxLen = 0
        var currS = Set<Character>()
        var ss = Array(s)

        for right in 0..<ss.count {
            while currS.contains(ss[right]) {
                currS.remove(ss[left])
                left += 1
            }

            currS.insert(ss[right])
            maxLen = max(maxLen, currS.count)
        }

        return maxLen
    }
}
