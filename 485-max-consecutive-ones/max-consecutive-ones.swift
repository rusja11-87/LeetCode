class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var res = 0
        var count = 0
        for num in nums{
            if num == 1 {
                res += 1
                count = max(res, count)
            } else {
                res = 0
            }
        }
        return count
    }
        
}