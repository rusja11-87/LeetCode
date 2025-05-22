class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        let morseCode = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        var transformations: Set<String> = []
        
        for word in words {
            var morseWord: String = ""
            for char in word {
                morseWord += morseCode[Int(String(char).unicodeScalars.first!.value) - 97]
            }
            transformations.insert(morseWord)
        }
        
        
        return transformations.count
    }
}