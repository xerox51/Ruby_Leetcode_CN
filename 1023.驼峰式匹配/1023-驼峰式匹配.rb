# @param {String[]} queries
# @param {String} pattern
# @return {Boolean[]}
def camel_match(queries, pattern)
  n = queries.length
  res = Array.new(n, true)
  for i in 0...n
    p = 0
    for j in 0...queries[i].length
      if p < pattern.length and pattern[p] == queries[i][j]
        p += 1
      elsif queries[i][j].ord >= 65 and queries[i][j].ord <= 90
        res[i] = false
        break
      end
    end
    if p < pattern.length
      res[i] = false
    end
  end
  res
end
