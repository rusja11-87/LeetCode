class Solution {
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        var str = paragraph.lowercased().split{!$0.isLetter}.map{String($0)}
        var countDict: [String: Int] = [:]
        
        for word in str {
            if !banned.contains(word){
                countDict[word, default: 0] += 1
            }
        }
        let mostRequent = countDict.max(by: {$0.value < $1.value})?.key ?? ""
        
        return mostRequent
    }
}