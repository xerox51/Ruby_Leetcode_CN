# @param {Integer[][]} grid
# @return {Boolean}
def check_x_matrix(grid)
  for i in 0...grid.length
    for j in 0...grid[0].length
      if i == j and grid[i][j] == 0
        return false
      end
      if i + j == grid[0].length - 1 and grid[i][j] == 0
        return false
      end
      if i != j and i + j != grid[0].length - 1 and grid[i][j] != 0
        return false
      end
    end
  end
  return true
end
