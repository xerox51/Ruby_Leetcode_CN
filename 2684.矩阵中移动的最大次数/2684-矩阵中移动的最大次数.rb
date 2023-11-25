# @param {Integer[][]} grid
# @return {Integer}
def max_moves(grid)
  m, n = grid.length, grid[0].length
  f = Array.new(m) { Array.new(n, 0) }
  (n - 2).downto(0) do |j|
    grid.each_with_index do |item, i|
      tmp = [i - 1, i, i + 1]
      for k in tmp
        if k >= 0 and k < m and grid[k][j + 1] > item[j]
          f[i][j] = [f[i][j], f[k][j + 1] + 1].max
        end
      end
    end
  end
  t = f[0][0]
  for item in f
    t = [t, item[0]].max
  end
  t
end
