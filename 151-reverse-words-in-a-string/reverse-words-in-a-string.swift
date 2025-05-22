class Solution {
    func reverseWords(_ s: String) -> String {
        var word = s.split(separator: " ")
        var word2 = Array(word)
        
        return String(word2.reversed().joined(separator: " "))
    }
}