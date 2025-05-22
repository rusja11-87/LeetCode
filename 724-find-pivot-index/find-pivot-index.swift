class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        let totalSum = nums.reduce(0, +)
        var leftSum = 0
        for (i, num) in nums.enumerated() {
            let rightSum = totalSum - leftSum - num
            if leftSum == rightSum {
                return i
            }
            leftSum += num
        }
        return -1
    }
}