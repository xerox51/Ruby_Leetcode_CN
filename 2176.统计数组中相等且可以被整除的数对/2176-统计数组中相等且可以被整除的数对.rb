# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_pairs(nums, k)
  cnt = 0
  for i in 0...nums.length
    for j in i + 1...nums.length
      if nums[i] == nums[j] and (i * j) % k == 0
        cnt += 1
      end
    end
  end
  cnt
end
