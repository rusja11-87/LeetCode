class Solution {
    func numberOfLines(_ widths: [Int], _ s: String) -> [Int] {
        var currentLineWidths = 0
        var counterLine = 1
        for char in s {
            let index = Int(char.asciiValue! - Character("a").asciiValue!)
            let charWidth = widths[index]
            
            if currentLineWidths + charWidth > 100 {
                counterLine += 1
                currentLineWidths = charWidth
            } else {
                currentLineWidths += charWidth
            }
        }
        return [counterLine, currentLineWidths]
    }
}