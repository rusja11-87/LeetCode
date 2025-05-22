class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var indexDict:[Int:Int] = [:]
        for (i, num) in nums.enumerated() {
            if let lastIndex = indexDict[num], i - lastIndex <= k {
                return true
            }
            indexDict[num] = i
        }
        return false
    }
}