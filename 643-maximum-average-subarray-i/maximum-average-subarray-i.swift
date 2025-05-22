class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var currSum = nums.prefix(k).reduce(0, +)
        var maxSum = currSum
        for i in k..<nums.count {
            currSum = currSum - nums[i - k] + nums[i]
            maxSum = max(currSum, maxSum)
        }
        return Double(maxSum) / Double(k)
    }
}