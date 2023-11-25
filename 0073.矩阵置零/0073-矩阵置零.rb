# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
  r = {}
  c = {}
  for i in 0...matrix.length
    for j in 0...matrix[i].length
      if matrix[i][j] == 0
        unless r.has_key?(i)
          r[i] = 1
        end
        unless c.has_key?(j)
          c[j] = 1
        end
      end
    end
  end
  for i in 0...matrix.length
    if r.has_key?(i)
      for j in 0...matrix[i].length
        matrix[i][j] = 0
      end
    end
  end
  for i in 0...matrix[0].length
    for j in 0...matrix.length
      if c.has_key?(i)
        matrix[j][i] = 0
      end
    end
  end
end
