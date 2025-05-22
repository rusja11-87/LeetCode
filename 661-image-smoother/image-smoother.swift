class Solution {
    func imageSmoother(_ img: [[Int]]) -> [[Int]] {
        let m = img.count //количество строк
        let n = img[0].count //количество столбцов
        guard m >= 1 && n >= 1 else {
            return [[]]
        }
        var newImg = Array(repeating: Array(repeating: 0, count: n), count: m)
        //Проходим по каждой ячейке
        for i in 0..<m {
            for j in 0..<n {
                var sum = 0 // сумма всех соседей
                var count = 0 //количество посчитанных соседей
                
                //проходим по соседям в пределах 3 на 3
                for x in -1...1 {
                    for y in -1...1 {
                        let ni = i + x
                        let nj = j + y
                        
                        // проверяем что сосед внутри границ таблицы
                        if ni >= 0 && ni < m && nj >= 0 && nj < n {
                            sum += img[ni][nj]
                            count += 1
                        }
                    }
                }
                //Записываем округленное вниз среднее значение
                newImg[i][j] = sum/count
            }
        }
  
        return newImg
    }
}