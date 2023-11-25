# @param {String} s
# @return {String}
def longest_prefix(s)
  n = s.length
  fail = Array.new(n, -1)
  1.upto(n - 1) do |i|
    j = fail[i - 1]
    while j != -1 and s[j + 1] != s[i]
      j = fail[j]
    end
    if s[j + 1] == s[i]
      fail[i] = j + 1
    end
  end
  return s[0, fail[-1] + 1]
end
