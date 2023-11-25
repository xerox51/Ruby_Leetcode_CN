# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  n = arr.length
  ans = []
  i = 0
  while ans.length <= n
    if arr[i] == 0
      ans.push(arr[i])
      ans.push(arr[i])
      i += 1
    else
      ans.push(arr[i])
      i += 1
    end
  end
  arr.clear
  arr.concat(ans[0, n])
end
