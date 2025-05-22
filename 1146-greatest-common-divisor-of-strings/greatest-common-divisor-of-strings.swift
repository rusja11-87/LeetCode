class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        if str1 + str2 != str2 + str1 {
            return ""
        }
        func gcd(_ a: Int, _ b: Int) -> Int {
            b == 0 ? a : gcd(b, a % b)
        }
        let lenght = gcd(str1.count, str2.count)
        let index = str1.index(str1.startIndex, offsetBy: lenght)
        return String(str1[..<index])
    }
}