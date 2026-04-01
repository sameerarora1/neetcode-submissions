class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var duplicates = Set<Int>()
        for i in nums {
            if duplicates.contains(i) {
                return true
            }
            duplicates.insert(i)
        }
        return false
    }
}
