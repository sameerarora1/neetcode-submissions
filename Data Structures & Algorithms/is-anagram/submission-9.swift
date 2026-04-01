class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var mapDict: [Int] = Array(repeating: 0, count: 26)
        for letter in s.utf8 {
            let ind = Int(letter - "a".utf8.first!)
            print(ind)
            mapDict[ind] = mapDict[ind] + 1
        }

        for letter in t.utf8 {
            let ind = Int(letter - "a".utf8.first!)
            print(ind)
            mapDict[ind] = mapDict[ind] - 1
        }

        return mapDict.allSatisfy { $0 == 0 }
    }
}
