class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var index = digits.count - 1
        while index >= 0 {
            if digits[index] < 9 {
            digits[index] += 1
                return digits
            } else {
            digits[index] = 0
            }
        index -= 1
        }   
        return[1] + digits
    }
}