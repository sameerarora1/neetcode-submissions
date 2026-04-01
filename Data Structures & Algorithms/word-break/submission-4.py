class Solution:
    def wordBreak(self, s: str, wordDict: List[str]) -> bool:
        #dp[i] = first i chars of s can be made up of dictionary words
        n = len(s)
        dp = [False] * (n+1)
        dp[0] = True
        wDict = set(wordDict)
        for i in range(1, n+1):
            for j in range(i):
                # print(f"{s[j:i]} at {i}")
                word = s[j:i]
                if dp[j] and word in wDict:
                    dp[i] = dp[i - (len(word))]
                    # print(f"WORD FOUND, dp[{i}][{j}]: {dp}")

        return dp[n]