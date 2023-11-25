# @param {Integer[]} arr
# @return {Float}
def trim_mean(arr)
  arr.sort!
  left = arr.length * 5 / 100
  right = arr.length * 5 / 100
  ans = arr[left, arr.length - 2 * right]
  ans.sum / ans.length.to_f
end
