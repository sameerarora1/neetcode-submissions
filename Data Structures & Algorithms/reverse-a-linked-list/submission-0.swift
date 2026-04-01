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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var next = head
        var curr = head

        while next != nil {
            next = curr?.next
            curr?.next = prev
            let tmp = next
            prev = curr
            curr = tmp
        }

        return prev
    }
}
