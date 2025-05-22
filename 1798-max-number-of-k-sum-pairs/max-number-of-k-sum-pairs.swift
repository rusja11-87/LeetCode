class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var map:[Int:Int] = [:]
        var count = 0
        for num in nums {
            let complement = k - num
            if let freq = map[complement], freq > 0 {
                map[complement]! -= 1
                count += 1
            } else {
                map[num, default: 0] += 1
            }
        }
        
        return count
    }
}