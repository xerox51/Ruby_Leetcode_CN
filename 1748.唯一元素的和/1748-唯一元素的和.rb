# @param {Integer[]} nums
# @return {Integer}
def sum_of_unique(nums)
  a = nums.uniq.select { |item| nums.count(item) == 1 }
  unless a.empty?
    a.sum
  else
    0
  end
end
