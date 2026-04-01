/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        var depth = 0
        var q = [root!]
        
        while !q.isEmpty {
            let size = q.count
            for _ in 0..<size {
                let curr = q.removeFirst()
                if curr.left != nil {
                    q.append(curr.left!)
                }
                if curr.right != nil {
                    q.append(curr.right!)
                }
            }
            depth += 1
        }
        return depth
    }
}
