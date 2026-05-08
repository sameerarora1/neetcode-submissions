class Solution:
    def isValid(self, s: str) -> bool:
        if len(s) < 2:
            return False
        cTO = {
            ")": "(",
            "}": "{",
            "]": "[",
        }
        st = []
        for l in s:
            print(st)
            if l in cTO:
                if st and st[-1] == cTO[l]:
                    st.pop()
                else:
                    return False
            else:
                st.append(l)
            
        return True if not st else False