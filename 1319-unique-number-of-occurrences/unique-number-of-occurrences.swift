class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var map:[Int:Int] = [:]
        for (index, values) in arr.enumerated() {
            map[values, default: 0] += 1
        }
        var countValues = map.values
        var setValues = Set(countValues)
        if setValues.count == countValues.count {
            return true
        }
        return false
    }
}