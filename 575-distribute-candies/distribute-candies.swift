class Solution {
    func distributeCandies(_ candyType: [Int]) -> Int {
        let candy = candyType.count
        let type = Set(candyType)
        let res = candy / 2
        if res == type.count || res > type.count{
            return type.count
        } else {
            return res
        }
    }
}