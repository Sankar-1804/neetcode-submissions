class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }

        let numSet = Set(nums)
        var longest = 1

        for num in numSet {
            if !numSet.contains(num - 1) {      // num starts a run
                var current = num
                var consecutiveCount = 1
                while numSet.contains(current + 1) {
                    current += 1
                    consecutiveCount += 1
                }
                if consecutiveCount > longest {
                    longest = consecutiveCount
                }
            }
        }
        return longest
    }
}