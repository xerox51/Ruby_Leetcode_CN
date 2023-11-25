# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  a = nums.uniq.select { |item| nums.count(item) > nums.length / 2 }
  a[0]
end
