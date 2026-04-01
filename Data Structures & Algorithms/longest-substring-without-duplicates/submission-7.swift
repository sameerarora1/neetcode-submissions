class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count <= 1 {
            return s.count
        }
        let str = Array(s)
        var currS = Set<Character>()
        var maxLen = Int.min
        var l = 0
        var r = 0
        let n = s.count
        
        while r < n {
            while currS.contains(str[r]) {
                currS.remove(str[l])
                l += 1
            }
            if !currS.contains(str[r]) {
                currS.insert(str[r])
                r += 1
            }
            if currS.count > maxLen {
                maxLen = currS.count
            }
        }
        return maxLen
    }
}
