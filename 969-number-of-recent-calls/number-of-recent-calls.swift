
class RecentCounter {
    private var requests: [Int] = []
    
    init() {}
    
    func ping(_ t: Int) -> Int {
        requests.append(t)
        
        //Удаляем все запросы которые вне диапазона [t - 3000, t]
        while let first = requests.first, first < t - 3000 {
            requests.removeFirst()
        }
        
        return requests.count
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * let obj = RecentCounter()
 * let ret_1: Int = obj.ping(t)
 */