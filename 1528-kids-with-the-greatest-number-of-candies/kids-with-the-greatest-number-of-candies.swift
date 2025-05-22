class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let maxCount = candies.max()
        var res = [Bool]()
        for i in 0..<candies.count {
            if candies[i] + extraCandies >= maxCount! {
                res.append(true)
            } else {
                res.append(false)
            }
        }
        
        return res
    }
}