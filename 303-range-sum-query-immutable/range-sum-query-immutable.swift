class NumArray {
    var prefixSum = [0]

    init(_ nums: [Int]) {
        for num in nums {
            prefixSum.append(prefixSum.last! + num)
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        return prefixSum[right + 1] - prefixSum[left]
    }
}