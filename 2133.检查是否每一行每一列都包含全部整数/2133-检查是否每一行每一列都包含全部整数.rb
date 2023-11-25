# @param {Integer[][]} matrix
# @return {Boolean}
def check_valid(matrix)
  flag1 = true
  flag2 = true
  matrix.each do |row|
    if row.uniq.sort != (1..matrix.length).to_a
      flag1 = false
      break
    end
  end
  mat = matrix.transpose
  mat.each do |row|
    if row.uniq.sort != (1..mat.length).to_a
      flag2 = false
      break
    end
  end
  flag1 && flag2
end
