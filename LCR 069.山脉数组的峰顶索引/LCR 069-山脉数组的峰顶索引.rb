# @param {Integer[]} arr
# @return {Integer}
def peak_index_in_mountain_array(arr)
  for i in 0...arr.length - 1
    if arr[i + 1] < arr[i]
      return i
    end
  end
end
