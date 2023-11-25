# @param {String} s
# @return {Integer}
def count_binary_substrings(s)
  cur = ""
  prev = 0
  cnt = 0
  ans = 0
  for i in 0..s.length
    char = s[i]
    if cur != char
      ans += [prev, cnt].min
      cur = char
      prev = cnt
      cnt = 1
    else
      cnt += 1
    end
  end
  ans
end
