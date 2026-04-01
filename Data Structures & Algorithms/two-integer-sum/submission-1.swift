class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var comp: [Int: Int] = [:]
        for (i, n) in nums.enumerated() {
            if comp.keys.contains(target - n) {
                if let compIndex = comp[target-n] {
                    return [compIndex, i]
                }
            }
            comp[n] = i
        }
        return []
    }
}
