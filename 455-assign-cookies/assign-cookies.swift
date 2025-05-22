class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var greed = g.sorted()
        var cookie = s.sorted()
        var i = 0
        var j = 0
        while i < greed.count && j < cookie.count {
            if greed[i] <= cookie[j] {
                i += 1
            }
            j += 1
        }
        return i
    }
}