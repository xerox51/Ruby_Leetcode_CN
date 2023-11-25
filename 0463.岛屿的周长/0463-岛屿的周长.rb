# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  total = 0
  n = grid.length
  m = grid[0].length
  if n == 1 && m == 1
    if grid[0][0] == 1
      return 4
    else
      return 0
    end
  elsif n == 1 && m > 1
    (0...m).each do |j|
      if grid[0][j] == 1
        total += 4 - near_one(grid, 0, j)
      end
    end
    return total
  elsif n > 1 && m == 1
    (0...n).each do |i|
      if grid[i][0] == 1
        total += 4 - near_one_col(grid, i, 0)
      end
    end
    return total
  else
    (0...n).each do |i|
      (0...m).each do |j|
        if grid[i][j] == 1
          total += 4 - near(grid, i, j)
        end
      end
    end
    return total
  end
end

def near_one_col(grid, i, j)
  tmp = 0
  if i == 0 && j == 0
    if grid[i + 1][j] == 1
      tmp += 1
    end
    return tmp
  elsif i > 0 && i < grid.length - 1 && j == 0
    if grid[i - 1][j] == 1
      tmp += 1
    end
    if grid[i + 1][j] == 1
      tmp += 1
    end
    return tmp
  else
    if grid[i - 1][j] == 1
      tmp += 1
    end
    return tmp
  end
end

def near_one(grid, i, j)
  tmp = 0
  if i == 0 && j == 0
    if grid[i][j + 1] == 1
      tmp += 1
    end
    return tmp
  elsif i == 0 && j > 0 && j < grid[0].length - 1
    if grid[i][j - 1] == 1
      tmp += 1
    end
    if grid[i][j + 1] == 1
      tmp += 1
    end
    return tmp
  else
    if grid[i][j - 1] == 1
      tmp += 1
    end
    return tmp
  end
end

def near(grid, i, j)
  tmp = 0
  if i < grid.length - 1 && j < grid[0].length - 1 && i > 0 && j > 0
    if grid[i + 1][j] == 1
      tmp += 1
    end
    if grid[i][j + 1] == 1
      tmp += 1
    end
    if grid[i - 1][j] == 1
      tmp += 1
    end
    if grid[i][j - 1] == 1
      tmp += 1
    end
    return tmp
  elsif i == 0 && j == 0
    if grid[i + 1][j] == 1
      tmp += 1
    end
    if grid[i][j + 1] == 1
      tmp += 1
    end
    return tmp
  elsif i == 0 && j > 0 && j < grid[0].length - 1
    if grid[i + 1][j] == 1
      tmp += 1
    end
    if grid[i][j - 1] == 1
      tmp += 1
    end
    if grid[i][j + 1] == 1
      tmp += 1
    end
    return tmp
  elsif i > 0 && j == 0 && i < grid.length - 1
    if grid[i - 1][j] == 1
      tmp += 1
    end
    if grid[i + 1][j] == 1
      tmp += 1
    end
    if grid[i][j + 1] == 1
      tmp += 1
    end
    return tmp
  elsif i == grid.length - 1 && j == 0
    if grid[i - 1][j] == 1
      tmp += 1
    end
    if grid[i][j + 1] == 1
      tmp += 1
    end
    return tmp
  elsif i == grid.length - 1 && j > 0 && j < grid[0].length - 1
    if grid[i][j - 1] == 1
      tmp += 1
    end
    if grid[i - 1][j] == 1
      tmp += 1
    end
    if grid[i][j + 1] == 1
      tmp += 1
    end
    return tmp
  elsif i == grid.length - 1 && j == grid[0].length - 1
    if grid[i - 1][j] == 1
      tmp += 1
    end
    if grid[i][j - 1] == 1
      tmp += 1
    end
    return tmp
  elsif i > 0 && i < grid.length - 1 && j == grid[0].length - 1
    if grid[i - 1][j] == 1
      tmp += 1
    end
    if grid[i + 1][j] == 1
      tmp += 1
    end
    if grid[i][j - 1] == 1
      tmp += 1
    end
    return tmp
  elsif i == 0 && j == grid[0].length - 1
    if grid[i][j - 1] == 1
      tmp += 1
    end
    if grid[i + 1][j] == 1
      tmp += 1
    end
    return tmp
  end
end
