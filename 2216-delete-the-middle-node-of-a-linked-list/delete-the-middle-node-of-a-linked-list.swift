/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func deleteMiddle(_ head: ListNode?) -> ListNode? {
        if head?.next == nil {
            return nil
        }
        var slow = head
        var fast = head
        var prev: ListNode?
        while fast?.next != nil {
            prev = slow
            slow = slow?.next!
            fast = fast?.next?.next
        }
        prev?.next = slow?.next
        return head
    }
}