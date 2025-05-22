class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var elem = Array(Set(nums)).sorted(by: >)
        var elem2 = elem.prefix(3)
//        elem.sort(by: >)
        if elem2.count < 3 {
            return elem2.max()!
        } else {
            if elem2[0] == elem2[1] {
                return elem2.max()!
            } else if elem2[0] == elem2[2] {
                return elem2.max()!
            } else if elem2[1] == elem2[2] {
                return elem2.max()!
            }
        }
        return elem2.min()!
    }
}