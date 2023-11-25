# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
  ans = {}
  for i in 0...nums.length - 1
    for j in i + 1...nums.length
      if nums[i] == nums[j]
        unless ans.has_key?([i, j])
          ans[[i, j]] = 1
        end
      end
    end
  end
  ans.size
end
