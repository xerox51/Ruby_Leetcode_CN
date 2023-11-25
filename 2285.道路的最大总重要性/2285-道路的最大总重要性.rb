# @param {Integer} n
# @param {Integer[][]} roads
# @return {Integer}
def maximum_importance(n, roads)
  temp = roads.flatten
  h = {}
  for i in 0...temp.length
    unless h.has_key?(temp[i])
      h[temp[i]] = 1
      next
    end
    if h.has_key?(temp[i])
      h[temp[i]] += 1
      next
    end
  end
  ans = h.values.sort.reverse
  total = 0
  for i in 0...ans.length
    total += ans[i] * (n - i)
  end
  return total
end
