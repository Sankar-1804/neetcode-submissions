class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
         var seen = [String : [String]]()

         for str in strs {
            let key = String(str.sorted())
            if let value = seen[key] {
                seen[key]?.append(str)
            } else {
                seen[key] = [str]
            }
         }
         return Array(seen.values)
    }
}
