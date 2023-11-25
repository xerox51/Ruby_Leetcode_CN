# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  if s + t[-1] == t
    return t[-1]
  else
    ans = t.each_char.to_a.uniq.select { |element| t.count(element) != s.count(element) }
    return ans[0]
  end
end
