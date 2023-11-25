# @param {Integer[][]} matrix
# @return {Integer}
def max_equal_rows_after_flips(matrix)
  tmp = {}
  t = { 1 => 0, 0 => 1 }
  for i in 0...matrix.length
    h = {}
    for j in 0...matrix[0].length
      if j == 0 and matrix[i][j] == 0
        h[j] = t[matrix[i][j]]
      elsif j == 0 and matrix[i][j] == 1
        h[j] = matrix[i][j]
      elsif j > 0 and matrix[i][0] == 0
        h[j] = t[matrix[i][j]]
      elsif j > 0 and matrix[i][0] == 1
        h[j] = matrix[i][j]
      end
    end
    if tmp.has_key?(h)
      tmp[h] += 1
    else
      tmp[h] = 1
    end
  end
  tmp.values.max
end
