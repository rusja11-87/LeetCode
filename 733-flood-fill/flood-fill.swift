class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        var image = image
        let startColor = image[sr][sc]
        if startColor == color {
            return image
        }
        let rows = image.count
        let cols = image[0].count
        func dfr(_ r:Int, _ c:Int){
            if r < 0 || r >= rows || c < 0 || c >= cols {
                return
            }
            if image[r][c] != startColor {
                return
            }
            
            image[r][c] = color
            dfr(r + 1, c)
            dfr(r - 1, c)
            dfr(r, c + 1)
            dfr(r, c - 1)
        }
        dfr(sr, sc)
        return image
    }
}