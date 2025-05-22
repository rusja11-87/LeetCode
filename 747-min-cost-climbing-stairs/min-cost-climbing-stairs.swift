class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var n = cost.count
        var minPrice = Array(repeating: 0, count: n + 1)
        for i in 2...n {
            let oneStep = minPrice[i - 1] + cost[i - 1]
            let twoStep = minPrice[i - 2] + cost[i - 2]
            minPrice[i] = min(oneStep, twoStep)
        }
        
        return minPrice[n]
    }
}