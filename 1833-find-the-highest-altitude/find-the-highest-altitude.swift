class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var newGain = gain
        newGain.insert(0, at: 0)
        for i in 0..<(newGain.count - 1) {
            newGain[i+1] += newGain[i]
        }
        return newGain.max()!
    }
}