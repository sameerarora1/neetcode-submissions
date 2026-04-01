class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        visited = set()
        l, r = 0, 0
        n = len(s)
        maxLen = 0
        while r < n:
            print(f"{visited}")
            print(f"s[{l}] = {s[l]} and s[{r}]={s[r]}\n")
            if s[r] in visited:
                while l < r and s[r] in visited:
                    print(f"Removing {s[l]} from {visited}")
                    visited.remove(s[l])
                    l += 1
            else:
                visited.add(s[r])
                r += 1
            maxLen = max(maxLen, len(visited))

        return maxLen
