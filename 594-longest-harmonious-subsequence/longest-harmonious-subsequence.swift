class Solution {
    func findLHS(_ nums: [Int]) -> Int {
        var count: [Int: Int] = [:]
        var res = 0
        
        for num in nums {
            count[num, default: 0] += 1
            count
        }
        for (key, value) in count {
            if let nextKey = count[key + 1] {
                res = max(res, value + nextKey)
            }
        }
        
        
        return res
    }
}