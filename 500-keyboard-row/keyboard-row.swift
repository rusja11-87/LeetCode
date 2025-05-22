class Solution {
    func findWords(_ words: [String]) -> [String] {
        let row1 = Set("qwertyuiop")
        let row2 = Set("asdfghjkl")
        let row3 = Set("zxcvbnm")
        
        return words.filter { word in
            let lowercasedWordSet = Set(word.lowercased())
            return lowercasedWordSet.isSubset(of: row1) ||
            lowercasedWordSet.isSubset(of: row2) ||
            lowercasedWordSet.isSubset(of: row3)
            
        }
    }
}