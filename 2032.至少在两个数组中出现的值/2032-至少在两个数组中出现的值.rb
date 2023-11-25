# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @return {Integer[]}
def two_out_of_three(nums1, nums2, nums3)
  num = nums1.dup
  nums = num.concat(nums2, nums3).uniq
  ans = Array.new(nums.length, 0)
  total = []
  for i in 0...nums.length
    if nums1.include?(nums[i])
      ans[i] += 1
    end
    if nums2.include?(nums[i])
      ans[i] += 1
    end
    if nums3.include?(nums[i])
      ans[i] += 1
    end
    if ans[i] >= 2
      total.push(nums[i])
    end
  end
  total
end
