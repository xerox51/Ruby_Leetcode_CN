# @param {Integer[]} arr
# @return {Boolean}
def valid_mountain_array(arr)
  a = arr.index(arr.max)
  if a == 0 or a == arr.length - 1
    return false
  end
  i = 0
  while i < arr.length - 1
    if arr[i] >= arr[i + 1] and i < a
      return false
    elsif arr[i] <= arr[i + 1] and i > a
      return false
    elsif i == a and arr[i + 1] == arr[i]
      return false
    end
    i += 1
  end
  return true
end
