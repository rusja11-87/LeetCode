class Solution {
    func longestSubarray(_ nums: [Int]) -> Int {
        var left = 0
        var zeroCount = 0
        var maxLength = 0
        for i in 0..<nums.count {
            if nums[i] == 0 {
                zeroCount += 1
            }
            while zeroCount > 1 {
                if nums[left] == 0 {
                    zeroCount -= 1
                }
                left += 1
            }
            maxLength = max(maxLength, i - left + 1)
        }
        return maxLength - 1
    }
}