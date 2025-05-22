class Solution {
    func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
        var result = [[Int]]()
        for row in image {
            // Переворачиваем строку
            let flip = row.reversed()
            // Инвертируем каждый элемент (0 → 1, 1 → 0)
            let inversed = flip.map{$0 == 0 ? 1 : 0}
            result.append(inversed)
        }
        return result
    }
}