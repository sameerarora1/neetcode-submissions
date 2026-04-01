/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var s = head
        var f = head?.next

        while s != nil && f != nil {
            if s === f {
                return true
            }
            s = s?.next
            f = f?.next?.next
        }
        return false

    }
}
