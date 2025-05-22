class Solution {
    func shortestCompletingWord(_ licensePlate: String, _ words: [String]) -> String {
        func letterCounts(_ str: String) -> [Character: Int] {
            var counts: [Character: Int] = [:]
            for char in str.lowercased() {
                if char.isLetter {
                    counts[char, default: 0] += 1
                }
            }
            return counts
        }
        let requiredCounts = letterCounts(licensePlate)
        var result:String? = nil
        
        for word in words {
            let wordCounts = letterCounts(word)
            var isCompleting = true
            
            for (char, count) in requiredCounts {
                if wordCounts[char, default: 0] < count {
                    isCompleting = false
                    break
                }
            }
            if isCompleting {
                if result == nil || word.count < result!.count {
                    result = word
                }
            }
        }
        
        return result ?? ""
    }
}