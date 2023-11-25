# @param {Integer[]} arr
# @return {Integer}
def maximum_sum(arr)
  dp0, dp1, res = arr[0], 0, arr[0]
  for i in 1...arr.length
    dp1 = [dp0, dp1 + arr[i]].max
    dp0 = [dp0, 0].max + arr[i]
    res = [res, [dp0, dp1].max].max
  end
  res
end
