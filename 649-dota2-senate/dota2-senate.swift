class Solution {
    func predictPartyVictory(_ senate: String) -> String {
        var radiant:[Int] = []
        var dire:[Int] = []
        for (index, char) in senate.enumerated() {
            if char == "R" {
                radiant.append(index)
            } else if char == "D" {
                dire.append(index)
            }
        }
        while !radiant.isEmpty && !dire.isEmpty {
            let r = radiant.removeFirst()
            let d = dire.removeFirst()
            if r < d {
                radiant.append(r + senate.count)
            } else {
                dire.append(d + senate.count)
            }
        }
        return radiant.isEmpty ? "Dire" : "Radiant"
    }
}