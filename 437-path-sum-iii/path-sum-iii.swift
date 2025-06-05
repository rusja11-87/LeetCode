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
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> Int {
        var prefixSumCount: [Int: Int] = [0: 1]
        return dfs(root, 0, targetSum, &prefixSumCount)
    }

    private func dfs(_ node: TreeNode?, _ currentSum: Int, _ targetSum: Int, _ prefixSumCount: inout [Int: Int]) -> Int {
        guard let node = node else {
            return 0
        }

        let newSum = currentSum + node.val
        var result = prefixSumCount[newSum - targetSum, default: 0]

        prefixSumCount[newSum, default: 0] += 1

        result += dfs(node.left, newSum, targetSum, &prefixSumCount)
        result += dfs(node.right, newSum, targetSum, &prefixSumCount)

        prefixSumCount[newSum]! -= 1  // backtrack

        return result
    }
}