# @param {Integer[]} nums
# @param {Integer} p
# @return {Integer}
def min_subarray(nums, p)
  x = nums.sum % p
  if x == 0
    return 0
  end
  y = 0
  idx = {}
  idx[0] = -1
  ans = nums.length
  nums.each_with_index do |item, index|
    y = (y + item) % p
    if idx.has_key?((y - x) % p)
      ans = [ans, index - idx[(y - x) % p]].min
    end
    idx[y] = index
  end
  if ans < nums.length
    return ans
  else
    return -1
  end
end
