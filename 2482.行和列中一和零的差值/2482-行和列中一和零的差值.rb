# @param {Integer[][]} grid
# @return {Integer[][]}
def ones_minus_zeros(grid)
  r = Array.new(grid.length, 0)
  c = Array.new(grid[0].length, 0)
  grid.each_with_index do |item, index|
    item.each_with_index do |it, idx|
      r[index] += it * 2 - 1
      c[idx] += it * 2 - 1
    end
  end
  r.each_with_index do |x, i|
    c.each_with_index do |y, j|
      grid[i][j] = x + y
    end
  end
  grid
end
