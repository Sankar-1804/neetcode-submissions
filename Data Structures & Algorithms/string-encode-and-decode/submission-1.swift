class Solution {

    func encode(_ strs: [String]) -> String {
        var finalString = ""

        for str in strs {
            finalString += "\(str.count)#\(str)"
        }

        return finalString
    }

    func decode(_ s: String) -> [String] {
    var result: [String] = []
    var i = 0
    let chars = Array(s)

    while i < chars.count {
        var j = i
        
        // find '#'
        while chars[j] != "#" {
            j += 1
        }

        let length = Int(String(chars[i..<j]))!
        let start = j + 1
        let end = start + length

        let str = String(chars[start..<end])
        result.append(str)

        i = end
    }

    return result
}
}
