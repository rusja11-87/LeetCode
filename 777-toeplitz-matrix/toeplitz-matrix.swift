class Solution {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        let rows = matrix.count //количество строк
        let cols = matrix[0].count //количество столбцов
        
        for row in 0..<rows - 1 {
            for col in 0..<cols - 1 {
                if matrix[row][col] != matrix[row + 1][col + 1] {
                    return false
                }
            }
        }
        return true
    }
}