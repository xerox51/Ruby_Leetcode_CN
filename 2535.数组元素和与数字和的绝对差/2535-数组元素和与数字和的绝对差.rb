# @param {Integer[]} nums
# @return {Integer}
def difference_of_sum(nums)
  total = 0
  ans = nums.sum
  nums.each do |item|
    tmp = item.to_s.each_char.to_a
    tmp.each do |it|
      total += it.to_i
    end
  end
  (total - ans).abs
end
