# @param {Integer[][]} grid
# @param {Integer} k
# @return {Integer[][]}
def shift_grid(grid, k)
  num = k % (grid.length * grid[0].length)
  for i in 0...num
    shift_grid_one(grid)
  end
  return grid
end

def shift_grid_one(grid)
  num = grid[grid.length - 1][grid[0].length - 1]
  ans = []
  for i in 0...grid.length
    ans.push(grid[i][grid[0].length - 1])
  end
  for i in 0...grid.length
    grid[i][1, grid[0].length - 1] = grid[i][0, grid[0].length - 1]
  end
  for i in 0...grid.length
    if i < grid.length - 1
      grid[i + 1][0] = ans[i]
    end
  end
  grid[0][0] = num
  return grid
end
