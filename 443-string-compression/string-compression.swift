class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        guard chars.count != 1 else {
            return 1
        }
        var readIndex = 0
        var wreadIndex = 0
        while readIndex < chars.count {
            let currentChar = chars[readIndex]
            var count = 0
            
            while readIndex < chars.count && chars[readIndex] == currentChar {
                readIndex += 1
                count += 1
            }
            chars[wreadIndex] = currentChar
            wreadIndex += 1
            
            if count > 1 {
                for digit in String(count) {
                    chars[wreadIndex] = digit
                    wreadIndex += 1
                }
            }
        }
        return wreadIndex
    }
}