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
    func pairSum(_ head: ListNode?) -> Int {
        var first = head
        var arHead: [Int] = []
        while first != nil {
            arHead.append(first!.val)
            first = first?.next
        }
        var result = 0
        var n = arHead.count
        for i in 0..<(n / 2) {
            let sum = arHead[i] + arHead[n - i - 1]
            result = max(result, sum)
        }
        return result
    }
}