# @param {Integer[][]} grid
# @return {Integer}
def count_servers(grid)
  m, n = grid.length, grid[0].length
  rows, cols = {}, {}
  for i in 0...m
    for j in 0...n
      if grid[i][j] == 1
        if rows.has_key?(i)
          rows[i] += 1
        else
          rows[i] = 1
        end
        if cols.has_key?(j)
          cols[j] += 1
        else
          cols[j] = 1
        end
      end
    end
  end
  ans = 0
  for i in 0...m
    for j in 0...n
      if grid[i][j] == 1 && (rows[i] > 1 || cols[j] > 1)
        ans += 1
      end
    end
  end
  ans
end
