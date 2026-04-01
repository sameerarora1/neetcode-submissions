class Solution:
    def letterCombinations(self, digits: str) -> List[str]:
        n = len(digits)
        if n == 0:
            return []
        numDict = {
            "2": "abc",
            "3": "def",
            "4": "ghi",
            "5": "jkl",
            "6": "mno",
            "7": "pqrs",
            "8": "tuv",
            "9": "wxyz"
        }

        out = []
        curr = []
        
        def dfs(i):
            if i == n:
                out.append("".join(curr))
                return

            for letter in numDict[digits[i]]:
                curr.append(letter)
                dfs(i + 1)
                curr.pop()
        dfs(0)

        return out