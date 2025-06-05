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
    var maxLength = 0

    func longestZigZag(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        // Начинаем с обоих направлений
        dfs(root.left, isLeft: true, length: 1)
        dfs(root.right, isLeft: false, length: 1)

        return maxLength
    }

    private func dfs(_ node: TreeNode?, isLeft: Bool, length: Int) {
        guard let node = node else { return }

        // Обновляем максимум
        maxLength = max(maxLength, length)

        if isLeft {
            // Идём налево → теперь нужно идти направо
            dfs(node.right, isLeft: false, length: length + 1)
            // Начинаем новый путь в том же направлении
            dfs(node.left, isLeft: true, length: 1)
        } else {
            // Идём направо → теперь нужно идти налево
            dfs(node.left, isLeft: true, length: length + 1)
            // Начинаем новый путь в том же направлении
            dfs(node.right, isLeft: false, length: 1)
        }
    }
}