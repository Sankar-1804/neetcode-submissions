class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {

        var seen = [Int:Int]()

        for num in nums {
            if let _ = seen[num] {
                return true
            } else {
                seen[num] = 1
            }
        }
        return false

    }
}
