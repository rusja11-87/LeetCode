class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var maxArea = Int.min
        
        while left < right {
            let width = right - left
            let currentHeight = min(height[left], height[right])
            let currentArea = width * currentHeight
            maxArea = max(currentArea, maxArea)
            
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
            
        }
        return maxArea
    }
}