class Solution {
    func decodeString(_ s: String) -> String {
        var stack:[(String,Int)] = []
        var currString = ""
        var currNum = 0
        for char in s {
            if char.isNumber {
                //построение числа из нескольких цифр
                if let digit = char.wholeNumberValue {
                    currNum = currNum * 10 + digit
                }
            } else if char == "[" {
                //сохраняем текущую строку и текущее число в стек
                stack.append((currString, currNum))
                currString = ""
                currNum = 0
            } else if char == "]" {
                //распаковываем: достаем из стека и умножаем
                let (prevstring, number) = stack.removeLast()
                currString = prevstring + String(repeating: currString, count: number)
            } else {
                currString.append(char)
            }
        }
        return currString
    }
}