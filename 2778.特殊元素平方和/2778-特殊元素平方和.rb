# @param {Integer[]} nums
# @return {Integer}
def sum_of_squares(nums)
  ans = 0
  n = nums.length
  nums.each_with_index do |item, index|
    if n % (index + 1) == 0
      ans += item * item
    end
  end
  ans
end
