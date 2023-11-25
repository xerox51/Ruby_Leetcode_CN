# @param {Integer[]} nums
# @return {Integer}
def maximum_triplet_value(nums)
  ans = 0
  for i in 0...nums.length - 2
    for j in i + 1...nums.length - 1
      for l in j + 1...nums.length
        ans = [ans, (nums[i] - nums[j]) * nums[l]].max
      end
    end
  end
  ans
end
