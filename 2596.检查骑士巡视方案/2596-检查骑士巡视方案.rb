# @param {Integer[][]} grid
# @return {Boolean}
def check_valid_grid(grid)
  if grid[0][0] != 0
    return false
  end
  n = grid.length
  indices = Array.new(n * n) { Array.new }
  for i in 0...n
    for j in 0...n
      indices[grid[i][j]] = [i, j]
    end
  end
  for i in 1...n * n
    dx = (indices[i][0] - indices[i - 1][0]).abs
    dy = (indices[i][1] - indices[i - 1][1]).abs
    if dx * dy != 2
      return false
    end
  end
  return true
end
