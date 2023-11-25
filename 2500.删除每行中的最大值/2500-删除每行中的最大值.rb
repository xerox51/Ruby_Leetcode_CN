# @param {Integer[][]} grid
# @return {Integer}
def delete_greatest_value(grid)
  ans = grid[0].max
  total = 0
  for j in 0...grid[0].length
    for i in 0...grid.length
      ans = [ans, grid[i].max].max
      grid[i].delete_at(grid[i].index(grid[i].max))
    end
    total += ans
    ans = 0
  end
  total
end
