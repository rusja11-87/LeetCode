class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var n = nums.count
        for (i, num) in nums.enumerated() {
            var count = 0
            for j in 0..<n {
                if nums[j] == num {
                    count += 1
                }
            }
            if count > n / 2 {
                return num
            }
        }
        return 0
    }
}