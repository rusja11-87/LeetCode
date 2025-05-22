class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let sortNums = nums.sorted()
        var result = 0
        for i in stride(from: 0, to: sortNums.count, by: 2){
            result += sortNums[i]
        }
        
        
        return result
    }
}