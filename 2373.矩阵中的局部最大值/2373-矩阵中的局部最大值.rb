# @param {Integer[][]} grid
# @return {Integer[][]}
def largest_local(grid)
  grid_ans = Array.new(grid.length - 2, 0) { Array.new(grid[0].length - 2, 0) }
  for i in 0...grid_ans.length
    for j in 0...grid_ans[0].length
      grid_ans[i][j] = [grid[i][j, 3].max, grid[i + 1][j, 3].max, grid[i + 2][j, 3].max].max
    end
  end
  grid_ans
end
