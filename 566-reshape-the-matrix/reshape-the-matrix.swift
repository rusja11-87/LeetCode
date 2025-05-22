class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let m = mat.count
        let n = mat[0].count
        let countElem = m * n
        let flatArray = mat.flatMap { $0 }
        var reshapeMat: [[Int]] = []
        var index = 0
        if countElem != r * c {
            return mat
        }
        for i in 0..<r{
            var newRow: [Int] = []
            for j in 0..<c {
                newRow.append(flatArray[index])
                index += 1
            }
            reshapeMat.append(newRow)
        }
        
        return reshapeMat
    }
}