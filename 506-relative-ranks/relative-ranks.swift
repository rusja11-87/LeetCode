class Solution {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        var sortedScore = score.sorted(by: >)
        var rankDict = [Int:String]()
        
        for (index, value) in sortedScore.enumerated() {
            switch index {
            case 0:
                rankDict[value] = "Gold Medal"
            case 1:
                rankDict[value] = "Silver Medal"
            case 2:
                rankDict[value] = "Bronze Medal"
            default:
                rankDict[value] = "\(index + 1)"
            }
        }
       
        return score.map{ rankDict[$0]!}
    }
}