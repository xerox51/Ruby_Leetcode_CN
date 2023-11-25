# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_k_difference(nums, k)
  ans = 0
  for i in 0...nums.length
    for j in i + 1...nums.length
      if (nums[j] - nums[i]).abs == k
        ans += 1
      end
    end
  end
  ans
end
