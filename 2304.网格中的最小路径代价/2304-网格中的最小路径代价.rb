# @param {Integer[][]} grid
# @param {Integer[][]} move_cost
# @return {Integer}
def min_path_cost(grid, move_cost)
  m, n = grid.length, grid[0].length
  pre = grid[0]
  for i in 1...m
    f = Array.new(n, 0)
    for j in 0...grid[i].length
      f[j] = 1.0 / 0.0
      for k in 0...grid[i - 1].length
        f[j] = [f[j], pre[k] + move_cost[grid[i - 1][k]][j]].min
      end
      f[j] += grid[i][j]
    end
    pre = f
  end
  ans = 1.0 / 0.0
  for i in 0...pre.length
    ans = [ans, pre[i]].min
  end
  ans
end
