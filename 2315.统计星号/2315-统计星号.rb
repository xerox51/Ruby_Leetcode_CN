# @param {String} s
# @return {Integer}
def count_asterisks(s)
  ans = s.split("|")
  p ans
  if ans.length == 3
    return ans[0].count("*") + ans[2].count("*")
  end
  n = ans.length
  total = 0
  (0...n).step(2) do |i|
    total += ans[i].count("*")
  end
  return total
end
