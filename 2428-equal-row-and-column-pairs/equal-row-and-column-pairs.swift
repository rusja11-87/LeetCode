class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var rowCount: [String: Int] = [:]
        
        //Считаем строки
        for row in grid {
            let key = row.map(String.init).joined(separator: ",")
            rowCount[key, default: 0] += 1
        }
        
        var result = 0
        
        //Сравниваем с каждым столбцом
        for col in 0..<n {
            var colArray = [Int]()
            for row in 0..<n {
                colArray.append(grid[row][col])
            }
            let key = colArray.map(String.init).joined(separator: ",")
            if let count = rowCount[key] {
                result += count
            }
        }
        return result
    }
}