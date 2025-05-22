class Solution {
    func shortestToChar(_ s: String, _ c: Character) -> [Int] {
//        let strArray = Array(s)
        var answer:[Int] = .init(repeating: 0, count: s.count)
        //MARK: Проходим строку слева направо
        var prev = Int.min / 2
        for (i, char) in s.enumerated() {
            if char == c {
                prev = i
            }
            answer[i] = i - prev
        }
        //MARK: Теперь походим строку справа налево
        prev = Int.max / 2
        for (i, char) in s.enumerated().reversed() {
            if char == c {
                prev = i
            }
            answer[i] = min(answer[i], prev - i)
        }
        
        return answer
    }
}