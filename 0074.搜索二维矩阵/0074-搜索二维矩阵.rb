# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  matrix.flatten!
  temp = matrix.bsearch_index { |element| element >= target }
  if temp == nil
    return false
  elsif matrix[temp] != target
    return false
  else
    return true
  end
end
