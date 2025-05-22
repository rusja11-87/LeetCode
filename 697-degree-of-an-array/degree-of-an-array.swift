class Solution {
    func findShortestSubArray(_ nums: [Int]) -> Int {
        guard !nums.isEmpty && nums[0] >= 0 else {
            return 0
        }
        var firstIndex = [Int:Int]()
        var lastIndex = [Int:Int]()
        var counts = [Int:Int]()
        for (i,num) in nums.enumerated() {
            counts[num, default: 0] += 1
            if firstIndex[num] == nil {
                firstIndex[num] = i
            }
            lastIndex[num] = i
        }
        let degree = counts.values.max()!
        var minLeght = nums.count
        
        for (num, count) in counts {
            if count == degree {
                let leght = lastIndex[num]! - firstIndex[num]! + 1
                minLeght = min(minLeght, leght)
            }
        }
        return minLeght
    }
}