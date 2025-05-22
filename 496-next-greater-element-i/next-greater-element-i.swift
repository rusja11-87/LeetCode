class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        guard !nums1.isEmpty else {
            return []
        }
        var result: [Int] = []
        for (index, num) in nums1.enumerated() {
            if let index2 = nums2.firstIndex(of: num) {
                var nextGreater: Int?
                for i in index2 + 1..<nums2.count {
                    if nums2[i] > num {
                        nextGreater = nums2[i]
                        break
                    }
                }
                result.append(nextGreater ?? -1)
            } else {
                result.append(-1)
            }
        }
       
        return result
    }
}

var nums1 = [2, 4]
var nums2 = [1, 2, 3, 4]
var res = Solution().nextGreaterElement(nums1, nums2)