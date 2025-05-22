class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        if n == 0 {
            return true
        }

        var flowerbed = flowerbed
        var count = 0
        
        for i in 0..<flowerbed.count {
            if flowerbed[i] == 0 {
                let leftEmpty = (i == 0) || (flowerbed[i - 1] == 0)
                let rightEmpty = (i == flowerbed.count - 1) || (flowerbed[i + 1] == 0)

                if leftEmpty && rightEmpty {
                    flowerbed[i] = 1  // Исправлено: теперь правильно отмечаем посаженный цветок
                    count += 1
                    if count >= n {
                        return true
                    }
                }
            }
        }
        return count >= n
    }
}