# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  n = nums.length
  res = []
  if nums.empty? or n < 3
    return []
  end
  nums.sort!
  (0...n).each do |i|
    if nums[i] > 0
      return res
    end
    if i > 0 and nums[i] == nums[i - 1]
      next
    end
    l = i + 1
    r = n - 1
    while l < r
      if nums[i] + nums[l] + nums[r] == 0
        res.push([nums[i], nums[l], nums[r]])
        while l < r and nums[l] == nums[l + 1]
          l += 1
        end
        while l < r and nums[r] == nums[r - 1]
          r -= 1
        end
        l += 1
        r -= 1
      elsif nums[i] + nums[l] + nums[r] > 0
        r -= 1
      else
        l += 1
      end
    end
  end
  res
end
