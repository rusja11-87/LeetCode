class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashTab = [Int: Int]()
        for (i, num) in nums.enumerated(){
            if let res = hashTab[target - num]{
                return [res, i]
            }
            hashTab[num] = i
        }
        return[]
    }
}