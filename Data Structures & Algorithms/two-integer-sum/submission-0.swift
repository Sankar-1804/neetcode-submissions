class Solution {
    
    func twoSum(_ nums: [Int] = [3,4,5,6], _ target: Int = 7) -> [Int] {
        
        var seen = [Int: Int]()
        for (i,num) in nums.enumerated() {
        
            var complement = target - num
        
            if let index = seen[complement] {
                return [index, i]
            }
            seen[num] = i
        }
        return []
    }
}
