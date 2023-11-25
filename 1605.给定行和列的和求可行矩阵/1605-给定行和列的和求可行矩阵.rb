# @param {Integer[]} row_sum
# @param {Integer[]} col_sum
# @return {Integer[][]}
def restore_matrix(row_sum, col_sum)
  n, m = row_sum.length, col_sum.length
  matrix = Array.new(n) { Array.new(m, 0) }
  i, j = 0, 0
  while i < n and j < m
    v = [row_sum[i], col_sum[j]].min
    matrix[i][j] = v
    row_sum[i] -= v
    col_sum[j] -= v
    if row_sum[i] == 0
      i += 1
    end
    if col_sum[j] == 0
      j += 1
    end
  end
  return matrix
end
