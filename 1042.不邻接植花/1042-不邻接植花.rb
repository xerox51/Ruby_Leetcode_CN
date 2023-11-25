# @param {Integer} n
# @param {Integer[][]} paths
# @return {Integer[]}
def garden_no_adj(n, paths)
  adj = Array.new(n) { Array.new }
  for path in paths
    adj[path[0] - 1].append(path[1] - 1)
    adj[path[1] - 1].append(path[0] - 1)
  end
  ans = Array.new(n, 0)
  for i in 0...n
    colored = Array.new(5, false)
    for vertex in adj[i]
      colored[ans[vertex]] = true
    end
    for j in 1...5
      unless colored[j]
        ans[i] = j
        break
      end
    end
  end
  ans
end
