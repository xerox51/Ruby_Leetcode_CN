# @param {Integer[][]} obstacle_grid
# @return {Integer}
def unique_paths_with_obstacles(obstacle_grid)
  n = obstacle_grid.length
  m = obstacle_grid[0].length
  f = Array.new(m, 0)
  if obstacle_grid[0][0] == 1
    f[0] = 0
  else
    f[0] = 1
  end
  for i in 0...n
    for j in 0...m
      if obstacle_grid[i][j] == 1
        f[j] = 0
        next
      end
      if j - 1 >= 0 and obstacle_grid[i][j - 1] != 1
        f[j] += f[j - 1]
      end
    end
  end
  return f[m - 1]
end
