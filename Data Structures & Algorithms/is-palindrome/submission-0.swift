class Solution {
    func isPalindrome(_ s: String) -> Bool {
    
    var noSpaceArray : [Character] = []
    
    for ch in s.lowercased() {
        if ch != " " {
            if ch.isLetter || ch.isNumber { 
                noSpaceArray.append(ch)
            }
        }
    }
    
    var i = 0
    var j = noSpaceArray.count - 1
    
    while i < noSpaceArray.count {
        if noSpaceArray[i] != noSpaceArray[j] {
            return false
        }
        i = i + 1
        j = j - 1
    }
    return true
    }
}
