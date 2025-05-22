class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows != 0 else { return []}
        var result = [[Int]]()
        for i in 0..<numRows {
            var line = [Int]()
            for j in 0...i {
                if j == 0 || j == i{
                    line.append(1)
                } else {
                    line.append(result[i - 1][j - 1] + result[i-1][j])
                }
            }
            result.append(line)
        }
        return result

    }
}