# @param {Integer[]} nums
# @return {Integer}
def dominant_index(nums)
  a = nums.max
  nums.each do |item|
    if item != a and a / item.to_f < 2
      return -1
    end
  end
  return nums.index(a)
end
