# @param {Integer[][]} grid
# @return {Integer}
def closed_island(grid)
  @m, @n = grid.length, grid[0].length
  ans = 0
  @grid = grid
  for i in 0...@m
    for j in 0...@n
      if @grid[i][j] == 0 and dfs(i, j)
        ans += 1
      end
    end
  end
  ans
end

def dfs(x, y)
  if x < 0 or y < 0 or x >= @m or y >= @n
    return false
  end
  if @grid[x][y] != 0
    return true
  end
  @grid[x][y] = -1
  ret1, ret2, ret3, ret4 = dfs(x - 1, y), dfs(x + 1, y), dfs(x, y - 1), dfs(x, y + 1)
  return ret1 && ret2 && ret3 && ret4
end
