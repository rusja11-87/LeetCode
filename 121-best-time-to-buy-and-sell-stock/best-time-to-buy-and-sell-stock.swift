class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = prices[0]
        var maxProfit = 0
        for price in prices {
            minPrice = min(price, minPrice)
            maxProfit = max(maxProfit, price - minPrice)
        }
        return maxProfit
    }
}