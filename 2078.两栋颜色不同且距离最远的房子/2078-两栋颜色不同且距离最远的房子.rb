# @param {Integer[]} colors
# @return {Integer}
def max_distance(colors)
  maxnum = 0
  i = 0
  h = {}
  ans = []
  while i < colors.length
    if h.has_key?(colors[i])
      h[colors[i]].push(i)
    end
    unless h.has_key?(colors[i])
      h[colors[i]] = [i]
      ans.push(i)
    end
    if h.size >= 2
      m = i
      n = 0
      if h[colors[i]].first == ans.first
        n = ans[1]
      else
        n = ans[0]
      end
      maxnum = [maxnum, m - n].max
    end
    i += 1
  end
  maxnum
end
