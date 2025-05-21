class Solution {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        guard Set(word1) == Set(word2) else {
            return false
        }
        var map1:[Character:Int] = [:]
        var map2:[Character:Int] = [:]
        for (index, values) in word1.enumerated() {
            map1[values, default: 0] += 1
            map1
        }
        for (index, values) in word2.enumerated() {
            map2[values, default: 0] += 1
            map2
        }
        let sort1 = map1.values.sorted()
        let sort2 = map2.values.sorted()
        return sort1 == sort2
    }
}