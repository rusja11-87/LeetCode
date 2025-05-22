class Solution {
    func reverseVowels(_ s: String) -> String {
        let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var sArray: [Character] = Array(s)
        var vowIndexes: [Int] = []
        var vowChar: [Character] = []
 
        for (index, char) in sArray.enumerated() {
            if vowels.contains(char) {
                vowIndexes.append(index)
                vowChar.append(char)
            }
        }
        vowChar.reverse()
        for (i, index) in vowIndexes.enumerated() {
            sArray[index] = vowChar[i]
        }

        return String(sArray)
    }
}