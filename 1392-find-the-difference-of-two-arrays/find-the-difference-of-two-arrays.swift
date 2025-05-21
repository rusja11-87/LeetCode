class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var nums1 = Set(nums1)
        var nums2 = Set(nums2)
        var res1 = [Int]()
        var res2 = [Int]()
        for i in nums1 {
            if nums2.contains(i) {
                continue
            } else {
                res1.append(i)
            }
        }
        for i in nums2 {
            if nums1.contains(i) {
                continue
            } else {
                res2.append(i)
            }
        }
        return [res1, res2]
    }
}