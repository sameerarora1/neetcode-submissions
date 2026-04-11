class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var out = Array<Int>(repeating: 0, count: nums.count)
        var pre = 1
        var post = 1
        for i in 0..<nums.count {
            out[i] = pre
            pre = pre * nums[i]
        }
        print(pre)
        print(post)

        for i in (0..<nums.count).reversed() {
            out[i] *= post
            post = post * nums[i]
        }

        return out
    }
}
