# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
  g.sort!
  s.sort!
  ans = 0
  i = 0
  j = 0
  while i < s.length and j < g.length
    if s[i] >= g[j]
      ans += 1
      i += 1
      j += 1
    elsif s[i] < g[j]
      i += 1
    end
  end
  return ans
end
