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
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        func dfs(_ node: TreeNode?, _ leaves: inout [Int]) {
            guard let node = node else {
                return
            }
            if node.left == nil && node.right == nil {
                leaves.append(node.val)
            }
            dfs(node.left, &leaves)
            dfs(node.right, &leaves)
        }
        var leaves1 = [Int]()
        var leaves2 = [Int]()
        
        dfs(root1, &leaves1)
        dfs(root2, &leaves2)
        
        return leaves1 == leaves2
    }
}