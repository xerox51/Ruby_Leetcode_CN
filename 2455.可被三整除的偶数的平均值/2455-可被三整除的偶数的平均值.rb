# @param {Integer[]} nums
# @return {Integer}
def average_value(nums)
  arr = nums.select { |item| item % 2 == 0 and item % 3 == 0 }
  unless arr.empty?
    (arr.sum / arr.length).floor
  else
    0
  end
end
