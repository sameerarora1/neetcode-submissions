class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        v = set()
        l, r = 0, 0
        n = len(s)
        maxLen = 0
        while r < n:
            print(f"s[{l}] = {s[l]} and s[{r}] = {s[r]}\n{v}\n")
            while s[r] in v:
                print(f"removing {s[l]} from {v}")
                v.remove(s[l])
                l += 1
            if s[r] not in v:
                v.add(s[r])
                r += 1
            maxLen = max(len(v), maxLen)
        return maxLen