class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var frequency: [Int: Int] = [:]
        // var uniqueValue:[Int] 
        for item in nums {
            frequency[item, default: 0] += 1            
        }
        for (num, count) in frequency {
            if count == 1 {
                return num
            }
        }
        return -1
    }
    
}