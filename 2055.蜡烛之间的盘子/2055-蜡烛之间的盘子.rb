# @param {String} s
# @param {Integer[][]} queries
# @return {Integer[]}
def plates_between_candles(s, queries)
  n = s.length
  preSum = Array.new(n, 0)
  left = Array.new(n, 0)
  sum, l = 0, -1
  for i in 0...s.length
    if s[i] == "*"
      sum += 1
    else
      l = i
    end
    preSum[i] = sum
    left[i] = l
  end
  right = Array.new(n, 0)
  i = n - 1
  r = -1
  while i >= 0
    if s[i] == "|"
      r = i
    end
    right[i] = r
    i -= 1
  end
  ans = Array.new(queries.length, 0)
  for i in 0...queries.length
    x, y = right[queries[i][0]], left[queries[i][1]]
    if x >= 0 and y >= 0 and x < y
      ans[i] = preSum[y] - preSum[x]
    end
  end
  return ans
end
