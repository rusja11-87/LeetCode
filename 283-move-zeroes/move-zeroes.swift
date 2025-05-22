class Solution {
    func moveZeroes(_ nums: inout [Int]) {
       var nonZero = 0
       for i in 0..<nums.count {
            if nums[i] != 0 {
                nums.swapAt(nonZero, i)
                nonZero += 1
            } 
        }   
    }
}