# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  occ = {}
  n = s.length
  rk, ans = -1, 0
  for i in 0...n
    if i != 0
      occ.delete(s[i - 1])
    end
    while rk + 1 < n and not occ.has_key?(s[rk + 1])
      occ[s[rk + 1]] = 1
      rk += 1
    end
    ans = [ans, rk - i + 1].max
  end
  return ans
end
