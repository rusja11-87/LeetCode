class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var intersection:[Int:Int] = [:]
        var res:[Int] = []
        for i in nums1 {
            intersection[i, default: 0] += 1
        }
        for i in nums2 {
            if intersection[i, default: 0] > 0 {
                res.append(i)
            }
            intersection[i, default: 0] -= 1
        }
        return res
    }
}