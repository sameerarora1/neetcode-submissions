class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        strDict = {}

        for i, s in enumerate(strs):
            key = "".join(sorted(s))
            strDict[key] = strDict.get(key, []) + [s]
        
        return list(strDict.values())