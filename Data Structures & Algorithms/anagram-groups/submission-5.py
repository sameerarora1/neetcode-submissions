class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        strDict = {}

        for i, s in enumerate(strs):
            count = [0] * 26
            for c in s:
                count[ord(c) - ord('a')] += 1
            key = tuple(count)
            strDict[key] = strDict.get(key, []) + [s]
        
        return list(strDict.values())