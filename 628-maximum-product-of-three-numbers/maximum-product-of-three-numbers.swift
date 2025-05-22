class Solution {
    func maximumProduct(_ nums: [Int]) -> Int {
        var numsSorted = nums.sorted()
        let n = numsSorted.count
        let res1 = numsSorted[n - 1] * numsSorted[n - 2] * numsSorted[n - 3]
        let res2 = numsSorted[0] * numsSorted[1] * numsSorted[n - 1]
        return max(res1, res2)
    }
}