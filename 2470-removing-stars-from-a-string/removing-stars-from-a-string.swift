class Solution {
    func removeStars(_ s: String) -> String {
        var res = [Character]()
        for char in s {
            if char == "*" {
                if !res.isEmpty {
                    res.removeLast()
                }
            } else {
                res.append(char)
            }
        }
        return String(res)
    }
}