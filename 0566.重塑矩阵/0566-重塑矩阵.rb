# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
  if mat.length * mat[0].length == r * c
    ans = []
    trans = mat.flatten
    (0...trans.length).step(c) do |i|
      ans.push(trans[i, c])
    end
    return ans
  else
    return mat
  end
end
