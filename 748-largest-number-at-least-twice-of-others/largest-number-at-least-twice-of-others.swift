class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        var sortNums = nums.sorted(by: >)
        let maxValue = sortNums[0]
        let secondMax = sortNums[1]
        if maxValue / 2 >= secondMax {
            return nums.firstIndex(of: maxValue)!
        }
        return -1
    }
}