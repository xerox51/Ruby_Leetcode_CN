# @param {Integer[][]} mat
# @return {Integer[]}
def row_and_maximum_ones(mat)
  temp = []
  s = [0, mat[0].count(1)]
  for i in 0...mat.length
    n = mat[i].count(1)
    if n > s[1]
      s = [i, n]
    end
  end
  s
end
