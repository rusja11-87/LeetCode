class Solution {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        var vowels:[Character] = ["a", "e", "i", "o", "u"]
        var chars = Array(s)
        var currentCount = 0
        var maxCount = 0
        
        for i in 0..<k {
            if vowels.contains(chars[i]) {
                currentCount += 1
            }
        }
        maxCount = currentCount
        
        for i in k..<chars.count {
            if vowels.contains(chars[i]) {
                currentCount += 1
            }
            if vowels.contains(chars[i - k]) {
                currentCount -= 1
            }
            maxCount = max(maxCount, currentCount)
        }
        return maxCount
    }
}