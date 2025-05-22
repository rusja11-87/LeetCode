class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        var res:[String] = []
        var start = 0
        for i in 0..<nums.count {
            if i < nums.count - 1 && nums[i] == nums[i + 1] - 1 {
                continue
            } else {
                if start == i {
                    res.append("\(nums[start])")
                } else {
                    res.append("\(nums[start])->\(nums[i])")
                    
                }
                start = i + 1
            }
        }
        return res
    }
}