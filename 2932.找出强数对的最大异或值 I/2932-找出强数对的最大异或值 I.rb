# @param {Integer[]} nums
# @return {Integer}
def maximum_strong_pair_xor(nums)
  ans = []
  for i in 0...nums.length
    for j in 0...nums.length
      if (nums[i] - nums[j]).abs <= [nums[i], nums[j]].min
        ans.push([nums[i], nums[j]])
      end
    end
  end
  ans.uniq!
  tmp = 0
  ans.each do |item|
    tmp = [item[0] ^ item[1], tmp].max
  end
  tmp
end
