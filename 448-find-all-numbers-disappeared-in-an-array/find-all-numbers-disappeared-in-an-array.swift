class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        guard nums.count != 0 else {
            return []
        }
        let start = 1
        let end = nums.count
        let set = Set(start...end)
        let numsSet = Set(nums)
        return Array(set.subtracting(numsSet).sorted())
    }
}