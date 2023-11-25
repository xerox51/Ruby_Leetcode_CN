# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  ans = {}
  nums.each do |item|
    unless ans.has_key?(item)
      ans[item] = 1
    end
  end
  ans.each_pair do |key, value|
    if ans.has_key?(target - key)
      return [key, target - key]
    end
  end
end
