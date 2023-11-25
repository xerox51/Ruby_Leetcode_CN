# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer}
def kth_smallest(mat, k)
  @m = mat.length
  @n = mat[0].length
  @cnt = 0
  @k = k
  @mat = mat
  left, right = 0, 0
  0.upto(@m - 1) do |i|
    left += mat[i][0]
    right += mat[i][@n - 1]
  end
  init = left
  while left <= right
    mid = left - (left - right) / 2
    @cnt = 1
    dfs(0, init, mid)
    if @cnt >= k
      right = mid - 1
    else
      left = mid + 1
    end
  end
  return left
end

def dfs(row, sum, target)
  if sum > target || @cnt > @k || row >= @m
    return
  end
  dfs(row + 1, sum, target)
  1.upto(@n - 1) do |i|
    newsum = sum - @mat[row][0] + @mat[row][i]
    if newsum > target
      break
    end
    @cnt += 1
    dfs(row + 1, newsum, target)
  end
end
