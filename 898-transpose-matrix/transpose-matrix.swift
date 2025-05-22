class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var result:[[Int]] = Array(repeating: [], count: matrix[0].count)
        
        for row in matrix {
            for (index, value) in row.enumerated() {
                result[index].append(value)
            }
        }
        return result
    }
}