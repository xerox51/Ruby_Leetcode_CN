# @param {String} s
# @return {String}
def longest_nice_substring(s)
  ans = ""
  for i in 0...s.length
    lower, upper = 0, 0
    j = i
    while j < s.length
      if s[j].ord >= 97 and s[j].ord <= 122
        lower |= 1 << (s[j].ord - 97)
      else
        upper |= 1 << (s[j].ord - 65)
      end
      if lower == upper and j - i + 1 > ans.length
        ans = s[i, j - i + 1]
      end
      j += 1
    end
  end
  return ans
end
