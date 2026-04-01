class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var compDict = [Int: Int]()
        for (ind, num) in nums.enumerated() {
            let comp = target - num
            if compDict.keys.contains(comp) {
                if let compInd = compDict[comp] {
                    return [compInd, ind]
                }
            }
            compDict[num] = ind
        }

        return []
    }
}
