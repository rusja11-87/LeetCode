class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack: [Int] = []
        
        for asteroid in asteroids {
            var current = asteroid
            var destroyed = false
            
            while let last = stack.last, current < 0, last > 0 {
                if abs(current) > abs(last) {
                    stack.removeLast()
                } else if abs(current) == abs(last) {
                    stack.removeLast()
                    destroyed = true
                    break
                } else {
                    destroyed = true
                    break
                }
            }
            if !destroyed {
                stack.append(current)
            }
        }
        return stack
    }
}