class Solution {
    func projectionArea(_ grid: [[Int]]) -> Int {
        var areaXY:Int = 0
        var areaYZ:Int = 0
        var areaZX:Int = 0
        let n = grid.count
        var maxCol = Array(repeating: 0, count: n)
        
        for i in 0..<n {
            var rowMax = 0
            for j in 0..<n {
                var value = grid[i][j]
                if value > 0 {
                    areaXY += 1
                }
                rowMax = max(rowMax, value)
                maxCol[j] = max(maxCol[j], value)
            }
            areaZX += rowMax
        }
        for maxVol in maxCol {
            areaXY += maxVol
        }
        
        return areaXY + areaYZ + areaZX
    }
}