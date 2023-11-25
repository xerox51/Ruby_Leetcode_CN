# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer} distance_threshold
# @return {Integer}
def find_the_city(n, edges, distance_threshold)
  g = Array.new(n) { Array.new(n, 1.0 / 0.0) }
  for i in 0...n
    g[i][i] = 0
  end
  for edge in edges
    g[edge[1]][edge[0]] = [g[edge[0]][edge[1]], edge[2]].min
    g[edge[0]][edge[1]] = g[edge[1]][edge[0]]
  end
  floyd(g)
  ans, cnt = -1, n + 10
  for i in 0...n
    cur = 0
    for j in 0...n
      if i != j and g[i][j] <= distance_threshold
        cur += 1
      end
    end
    if cur <= cnt
      cnt, ans = cur, i
    end
  end
  ans
end

def floyd(g)
  n = g.length
  for p in 0...n
    for i in 0...n
      for j in 0...n
        g[i][j] = [g[i][j], g[i][p] + g[p][j]].min
      end
    end
  end
end
