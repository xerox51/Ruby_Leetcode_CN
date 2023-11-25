# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer}
def min_trio_degree(n, edges)
  g = {}
  h = {}
  degree = Array.new(n, 0)
  edges.each do |edge|
    x, y = edge[0] - 1, edge[1] - 1
    if g.has_key?(x)
      unless g[x].has_key?(y)
        g[x][y] = 1
      end
    else
      g[x] = {}
      g[x][y] = 1
    end
    if g.has_key?(y)
      unless g[x].has_key?(x)
        g[y][x] = 1
      end
    else
      g[y] = {}
      g[y][x] = 1
    end
    degree[x] += 1
    degree[y] += 1
  end
  edges.each do |edge|
    x, y = edge[0] - 1, edge[1] - 1
    if degree[x] < degree[y] or (degree[x] == degree[y] and x < y)
      if h.has_key?(x)
        h[x].push(y)
      else
        h[x] = [y]
      end
    else
      if h.has_key?(y)
        h[y].push(x)
      else
        h[y] = [x]
      end
    end
  end
  ans = 1.0 / 0.0
  for i in 0...n
    if h.has_key?(i)
      for item in h[i]
        if h.has_key?(item)
          for it in h[item]
            if g[i].has_key?(it)
              ans = [ans, degree[i] + degree[item] + degree[it] - 6].min
            end
          end
        end
      end
    end
  end
  if ans.to_f.infinite?
    return -1
  else
    return ans
  end
end
