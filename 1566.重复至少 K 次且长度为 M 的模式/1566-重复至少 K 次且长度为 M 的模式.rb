# @param {Integer[]} arr
# @param {Integer} m
# @param {Integer} k
# @return {Boolean}
def contains_pattern(arr, m, k)
  for i in 0...arr.length - m * k + 1
    temp = arr[i, m] * k
    if temp.eql?(arr[i, m * k])
      return true
    end
  end
  return false
end
