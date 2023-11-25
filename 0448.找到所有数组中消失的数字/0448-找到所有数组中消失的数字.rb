# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  h = {}
  nums.sort!
  for i in 0...nums.length
    h[i + 1] = nums[i]
  end
  ans = []
  h.each do |key, value|
    if key != value
      ans.push(key)
    end
  end
  ans - ans.intersection(nums)
end
