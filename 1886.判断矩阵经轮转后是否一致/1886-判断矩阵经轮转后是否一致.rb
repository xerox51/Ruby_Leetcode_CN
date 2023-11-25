# @param {Integer[][]} mat
# @param {Integer[][]} target
# @return {Boolean}
def find_rotation(mat, target)
  n = mat.length
  for k in 0...4
    for i in 0...n / 2
      for j in 0...(n + 1) / 2
        mat[i][j], mat[n - 1 - j][i], mat[n - 1 - i][n - 1 - j], mat[j][n - 1 - i] = mat[n - 1 - j][i], mat[n - 1 - i][n - 1 - j], mat[j][n - 1 - i], mat[i][j]
      end
    end
    if mat == target
      return true
    end
  end
  return false
end
