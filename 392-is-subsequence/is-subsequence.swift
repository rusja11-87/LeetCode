class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var i = s.startIndex
        var j = t.startIndex
        while i < s.endIndex && j < t.endIndex {
            if s[i] == t[j] {
                s.formIndex(after: &i)
            }
            t.formIndex(after: &j)
        }
        return i == s.endIndex
        
    }
}