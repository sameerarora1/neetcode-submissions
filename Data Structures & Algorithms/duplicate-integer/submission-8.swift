class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        let x = Set(nums)
        return x.count != nums.count

    }
}
