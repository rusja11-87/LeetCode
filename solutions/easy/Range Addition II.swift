// Title: Range Addition II
            // Difficulty: Easy
            // Language: Swift
            // Link: https://leetcode.com/problems/range-addition-ii/

class Solution {
    func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int {
        var minAi = m
        var minBi = n
        
        for op in ops {
            minAi = min(minAi, op[0])
            minBi = min(minBi, op[1])
        }
        return minAi * minBi
    }
}