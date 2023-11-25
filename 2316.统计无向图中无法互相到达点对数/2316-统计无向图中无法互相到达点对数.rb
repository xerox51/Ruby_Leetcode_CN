# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer}
def count_pairs(n, edges)
  graph = Array.new(n) { Array.new }
  for item in edges
    graph[item[0]].push(item[1])
    graph[item[1]].push(item[0])
  end
  visited = Array.new(n, false)
  res = 0
  for i in 0...n
    unless visited[i]
      count = dfs(i, visited, graph)
      res += count * (n - count)
    end
  end
  res / 2
end

def dfs(x, visited, graph)
  visited[x] = true
  count = 1
  for y in graph[x]
    unless visited[y]
      count += dfs(y, visited, graph)
    end
  end
  return count
end
