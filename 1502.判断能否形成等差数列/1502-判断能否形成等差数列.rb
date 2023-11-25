# @param {Integer[]} arr
# @return {Boolean}
def can_make_arithmetic_progression(arr)
  if arr.length == 2
    return true
  end
  arr.sort!
  between = arr[1] - arr[0]
  for i in 2...arr.length
    if arr[i] - arr[i - 1] != between
      return false
    end
  end
  return true
end
