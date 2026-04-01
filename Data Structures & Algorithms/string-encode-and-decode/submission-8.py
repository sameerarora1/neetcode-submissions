class Solution:

    def encode(self, strs: List[str]) -> str:
        out = ""
        for s in strs:
            n = len(s)
            out += f"{n}${s}"
        return out

    def decode(self, s: str) -> List[str]:
        res = []
        n = len(s)
        i=0
        while i < n-1:
            j = i + 1
            while s[j] != "$":
                j += 1
            
            length = int(s[i:j])
            j += 1
            st = s[j: j + length]
            res.append(st)
            i = j + length
        
        return res