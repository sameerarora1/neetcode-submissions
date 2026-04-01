/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {return []}
        var out = [[Int]]()

        var q = [root]
        while !q.isEmpty {
            var level = [Int]()
            for _ in 0..<q.count {
                let curr = q.removeFirst()
                level.append(curr.val)
                if let l = curr.left {
                    q.append(l)
                }
                if let r = curr.right {
                    q.append(r)
                }
            }
            out.append(level)
        }
        return out
    }
}