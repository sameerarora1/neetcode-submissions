class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        let numSet = Set(nums)
        if numSet.count == nums.count {
            return false
        }
        return true
    }
}
