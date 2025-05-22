class MyHashMap {
    private let size = 1000
    private var buckets: [[(key: Int, value: Int)]]

    init() {
        // Инициализируем 1000 пустых бакетов
        buckets = Array(repeating: [], count: size)
    }

    private func hash(_ key: Int) -> Int {
        return key % size
    }

    func put(_ key: Int, _ value: Int) {
        let index = hash(key)
        for i in 0..<buckets[index].count {
            if buckets[index][i].key == key {
                buckets[index][i].value = value  // обновляем
                return
            }
        }
        buckets[index].append((key, value)) // если нет — добавляем
    }

    func get(_ key: Int) -> Int {
        let index = hash(key)
        for pair in buckets[index] {
            if pair.key == key {
                return pair.value
            }
        }
        return -1 // не найден
    }

    func remove(_ key: Int) {
        let index = hash(key)
        buckets[index].removeAll { $0.key == key }
    }
}