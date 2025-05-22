class Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        var maxLen = 1
        var curLen = 1
        for i in 1..<nums.count {
            if nums[i] > nums[i - 1] {
                curLen += 1
                maxLen = max(curLen, maxLen)
                continue
            } else {
                curLen = 1
            }
        }
        return max(curLen, maxLen)
    }
}