class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var out = [[Int]]()
        let sorted = nums.sorted()
        let n = sorted.count

        for (i, iVal) in sorted.enumerated() {
            // print("new num=\(iVal)")
            if i > 0 && iVal == sorted[i-1]{
                continue
            }
            var j = i + 1
            var k = n - 1
            
            while j < k {
                let jVal = sorted[j]
                let kVal = sorted[k]
                let total = iVal + jVal + kVal
                // print("i: \(i)\nj: \(j)\nk: \(k)\ntotal: \(total)\n")
                
                if total < 0 {
                    j += 1
                } else if total > 0 {
                    k -= 1
                } else {
                    let new = [iVal, jVal, kVal]
                    out.append(new)
                    while j < k && jVal == sorted[j] {
                        j += 1
                    }
                    while j < k && kVal == sorted[k] {
                        k -= 1
                    }
                }
            }
        }

        return out
    }
}
