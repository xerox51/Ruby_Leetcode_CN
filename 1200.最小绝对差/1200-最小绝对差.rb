# @param {Integer[]} arr
# @return {Integer[][]}
def minimum_abs_difference(arr)
  arr.sort!
  h = {}
  for i in 1...arr.length
    if h.has_key?(arr[i] - arr[i - 1])
      h[arr[i] - arr[i - 1]].push([arr[i - 1], arr[i]])
    end
    unless h.has_key?(arr[i] - arr[i - 1])
      h[arr[i] - arr[i - 1]] = [[arr[i - 1], arr[i]]]
    end
  end
  return h[h.keys.min]
end
