class Solution:
    def isPalindrome(self, s: str) -> bool:
        cleanS = ""
        alNum = set()
        for c in "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm1234567890":
            alNum.add(c)
        
        for c in s:
            if c in alNum:
                cleanS += c.lower()
        
        n = len(cleanS)
        start = 0
        end = n - 1
        
        match = 0
        matchCond = n // 2 +(n%2) 
        
        while start <= end:
            if cleanS[start] == cleanS[end]:
                match += 1

            start += 1
            end -= 1
        
        return match == matchCond