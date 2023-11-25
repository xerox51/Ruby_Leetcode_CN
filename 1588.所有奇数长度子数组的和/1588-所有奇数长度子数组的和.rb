# @param {Integer[]} arr
# @return {Integer}
def sum_odd_length_subarrays(arr)
  if arr.length == 1
    return arr[0]
  end
  n = arr.length % 2
  ans = 0
  for j in 0...arr.length
    (1..arr.length).step(2) do |i|
      if j + i <= arr.length
        ans += arr[j, i].sum
      end
    end
  end
  return ans
end
