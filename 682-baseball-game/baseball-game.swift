class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var newArray: [Int] = []
        for op in operations {
            switch op {
            case "+":
                let last = newArray[newArray.count - 1]
                let secondLast = newArray[newArray.count - 2]
                newArray.append(last + secondLast)
            case "D":
                let last = newArray.last!
                newArray.append(last * 2)
            case "C":
                newArray.removeLast()
            default :
                if let num = Int(op) {
                    newArray.append(num)
                }
            }
        }
        return newArray.reduce(0, +)
    }
}