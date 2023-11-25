# @param {Integer[][]} mat
# @return {Integer}
def num_special(mat)
  mat_t = mat.transpose
  ans = 0
  for i in 0...mat.length
    for j in 0...mat[0].length
      if mat[i][j] == 1
        if mat[i].one? { |element| element == 1 } and mat_t[j].one? { |element| element == 1 }
          ans += 1
        end
      end
    end
  end
  ans
end
