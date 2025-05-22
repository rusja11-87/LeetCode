class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result = 0
        var nums2:[Int] = []
       for i in nums {
        result += i
        nums2.append(result)
       } 
       return nums2
    }
}