# @param {Integer[][]} matrix
# @return {Integer[]}
def lucky_numbers(matrix)
  ans1 = []
  ans2 = []
  for i in 0...matrix.length
    ans1.push(matrix[i].min)
  end
  arr = matrix.transpose
  for i in 0...arr.length
    ans2.push(arr[i].max)
  end
  ans1.intersection(ans2)
end
