class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        var seen = [Character:Int]()

        for str in s {
            if let value = seen[str] {
                seen[str] = value + 1
            } else {
                seen[str] = 1
            }
        }

        var visited = [Character:Int]()


        for str in t {
            if let value = visited[str] {
                visited[str] = value + 1
            } else {
                visited[str] = 1
            }
        }
        return seen == visited
    }
}
