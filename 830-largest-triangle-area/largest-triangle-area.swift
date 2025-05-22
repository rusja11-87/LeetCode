class Solution {
    func largestTriangleArea(_ points: [[Int]]) -> Double {
        func area(_ a:[Int], _ b:[Int], _ c:[Int]) -> Double {
            return 0.5 * abs(
                Double(a[0] * (b[1] - c[1]) +
                       b[0] * (c[1] - a[1]) +
                       c[0] * (a[1] - b[1]))
            )
        }
        var maxArea = 0.0
        for i in 0..<points.count {
            for j in i+1..<points.count {
                for k in j+1..<points.count {
                    let a = points[i]
                    let b = points[j]
                    let c = points[k]
                    let curentArea = area(a, b, c)
                    if curentArea > maxArea {
                        maxArea = curentArea
                        var res = max(curentArea, maxArea)
                    }
                }
            }
        }
        return maxArea
    }
}