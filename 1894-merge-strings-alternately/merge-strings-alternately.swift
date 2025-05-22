class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var arWord1 = Array(word1)
        var arWord2 = Array(word2)
        var result:[Character] = []
        
        for i in 0..<max(arWord1.count, arWord2.count) { //Выбираем длину самого длинного массива
            if i < arWord1.count {
                result.append(arWord1[i])
            }
            if i < arWord2.count {
                result.append(arWord2[i])
            }
            
        }
        return String(result)
    }
}