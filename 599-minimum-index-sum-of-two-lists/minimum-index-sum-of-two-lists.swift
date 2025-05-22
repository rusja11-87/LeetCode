class Solution {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        guard 1 <= list1.count, 1000 >= list2.count else {
            return []
        }
        var result = [Int:[String]]()
        let shareString = Set(list1).intersection(Set(list2))
        
        for string in shareString {
            if let index1 = list1.firstIndex(of: string),
               let index2 = list2.firstIndex(of: string) {
                let sumIndex = index1 + index2
                result[sumIndex, default: []].append(string)
                
            }
                
        }
        let lowesIndexSum = result.keys.sorted()[0]
        return result[lowesIndexSum]!
    }
}