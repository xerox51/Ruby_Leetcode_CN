# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
  flag1 = nil
  flag2 = nil
  for i in 0...matrix[0].length
    if flag1 == nil
      flag1 = judge(matrix, 0, i)
    else
      flag1 = flag1 && judge(matrix, 0, i)
    end
  end
  for i in 0...matrix.length
    if flag2 == nil
      flag2 = judge(matrix, i, 0)
    else
      flag2 = flag2 && judge(matrix, i, 0)
    end
  end
  flag1 && flag2
end

def judge(matrix, i, j)
  a = i
  b = j
  m = matrix[a][b]
  while a + 1 < matrix.length && b + 1 < matrix[0].length
    a += 1
    b += 1
    if matrix[a][b] != m
      return false
    end
  end
  return true
end
