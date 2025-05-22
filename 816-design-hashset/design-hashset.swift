class MyHashSet {
    private let size = 1000
    private var buckets: [[Int]]

    init() {
        buckets = Array(repeating: [Int](), count: size)
    }

    private func hash(_ key: Int) -> Int {
        return key % size
    }

    func add(_ key: Int) {
        let index = hash(key)
        if !buckets[index].contains(key) {
            buckets[index].append(key)
        }
    }

    func remove(_ key: Int) {
        let index = hash(key)
        if let i = buckets[index].firstIndex(of: key) {
            buckets[index].remove(at: i)
        }
    }

    func contains(_ key: Int) -> Bool {
        let index = hash(key)
        return buckets[index].contains(key)
    }
}