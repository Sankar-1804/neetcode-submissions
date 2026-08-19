class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var seen = [Int:Int]()

        for num in nums.sorted() {
            if let value = seen[num] {
                seen[num] = value + 1
            } else {
                seen[num] = 1
            }
        }
        return seen.sorted { $0.value > $1.value }
            .prefix(k)
            .map { $0.key }

    }
}
  