class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var out = Array<Int>(repeating: 0, count: nums.count)
        var pre = 1
        var post = 1
        var i = 0
        while (i < nums.count) {
            out[i] = pre
            pre = pre * nums[i]
            // print("val=\(nums[i])\npre=\(pre)\nout=\(out)\n")
            i += 1
        }
        i = nums.count - 1
        while (i >= 0) {
            // print("val=\(nums[i])\npost=\(post)\nout=\(out)\n")
            out[i] = post * out[i]
            post = post * nums[i]
            i -= 1
        }

        return out
    }
}
