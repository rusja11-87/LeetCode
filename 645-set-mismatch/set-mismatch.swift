class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var count = Array(repeating: 0, count: n + 1)
        var double = 0
        var missing = 0
        for num in nums {
            count[num] += 1
        }
        for i in 1...n {
            if count[i] == 2 {
                double = i
                
            } else if count[i] == 0 {
                missing = i
            }
        }
        
        return [double, missing]
    }
}