
class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        buildTree(nums, 0, nums.count - 1)
    }
    func buildTree (_ nums: [Int], _ left: Int, _ right: Int) -> TreeNode? {
        if left > right {
            return nil
        }
        //let left = nums[0]
        //let right = nums.count - 1
        let mid = left + (right - left) / 2
        let root = TreeNode(nums[mid])
        root.left = buildTree(nums, left, mid - 1)
        root.right = buildTree(nums, mid + 1, right)
        return root
    }
}