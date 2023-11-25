# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  m = s.length
  n = p.length
  f = Array.new(m + 1) { Array.new(n + 1, false) }
  f[0][0] = true
  (0..m).each do |i|
    (1..n).each do |j|
      if p[j - 1] == "*"
        f[i][j] |= f[i][j - 2]
        if matches(s, p, i, j - 1)
          f[i][j] |= f[i - 1][j]
        end
      else
        if matches(s, p, i, j)
          f[i][j] |= f[i - 1][j - 1]
        end
      end
    end
  end
  f[m][n]
end

def matches(s, p, i, j)
  if i == 0
    return false
  end
  if p[j - 1] == "."
    return true
  end
  return s[i - 1] == p[j - 1]
end
