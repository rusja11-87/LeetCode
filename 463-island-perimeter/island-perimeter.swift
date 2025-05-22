class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var perimetr = 0
        let row = grid.count
        let col = grid[0].count
        
        for i in 0..<row{
            for j in 0..<col{
                if grid[i][j] == 1 {
                    perimetr += 4
                    
                    if i > 0 && grid[i - 1][j] == 1 {
                        perimetr -= 2
                    }
                    if j > 0 && grid[i][j - 1] == 1 {
                        perimetr -= 2
                    }
                }
            }
        }
        
        return perimetr
    }
}