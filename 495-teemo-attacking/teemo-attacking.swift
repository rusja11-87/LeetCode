class Solution {
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
        guard duration != 0 else {return 0}
        var res = 0
        for i in 0..<timeSeries.count - 1 {
            res += min (duration, timeSeries[i + 1] - timeSeries[i])
        }
        return res + duration
    }
}
var timeSeries = [1, 4]
var duration = 2
var res = Solution().findPoisonedDuration(timeSeries, duration)