class Solution {
    func fairCandySwap(_ aliceSizes: [Int], _ bobSizes: [Int]) -> [Int] {
        //Определяем сколько конфет у каждого
        let totalAlice = aliceSizes.reduce(0, +)
        let totalBob = bobSizes.reduce(0, +)
        //Итоговый результат
        var resultat = [Int]()
        //Сколько конфет нужно либо отдать либо взять чтоб получилось поровну
        var deff = (totalBob - totalAlice) / 2
        //Преобразуем массив в набор чтоб уменьшить время работы цикла
        var bobSet = Set(bobSizes)
        //Проходим по массиву с конфетами и определяем подходящие пары
        for a in aliceSizes {
            let b = a + deff
            if bobSet.contains(b) {
                resultat = [a, b]
            }
        }
        return resultat
    }
}