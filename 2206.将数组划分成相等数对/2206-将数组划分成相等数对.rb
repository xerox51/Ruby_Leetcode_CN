# @param {Integer[]} nums
# @return {Boolean}
def divide_array(nums)
  nums.uniq.all? { |element| nums.count(element) % 2 == 0 }
end
