# @param {Integer} start
# @param {Integer} goal
# @return {Integer}
def min_bit_flips(start, goal)
  s = start.to_s(2)
  g = goal.to_s(2)
  if s.length >= g.length
    m1 = s[0, s.length - g.length].count("1")
    m2 = 0
    for i in 0...g.length
      if s[s.length - g.length + i] != g[i]
        m2 += 1
      end
    end
    return m1 + m2
  else
    m1 = g[0, g.length - s.length].count("1")
    m2 = 0
    for i in 0...s.length
      if s[i] != g[g.length - s.length + i]
        m2 += 1
      end
    end
    return m1 + m2
  end
end
