# @param {Integer[][]} mat
# @return {Integer}
def diagonal_sum(mat)
  if mat.length % 2 == 0
    total = 0
    for i in 0...mat.length
      for j in 0...mat.length
        if i == j
          total += mat[i][j]
        end
        if i + j == mat.length - 1
          total += mat[i][j]
        end
      end
    end
    return total
  else
    total = 0
    for i in 0...mat.length
      for j in 0...mat.length
        if i == j
          total += mat[i][j]
        end
        if i + j == mat.length - 1
          total += mat[i][j]
        end
      end
    end
    return total - mat[mat.length / 2][mat.length / 2]
  end
end
