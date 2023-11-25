# @param {Integer[]} nums
# @return {Integer}
def count_hill_valley(nums)
  res = 0
  n = nums.length
  (1...n - 1).each do |i|
    if nums[i] == nums[i - 1]
      next
    end
    left = 0
    (i - 1).downto(0) do |j|
      if nums[j] > nums[i]
        left = 1
        break
      elsif nums[j] < nums[i]
        left -= 1
        break
      end
    end
    right = 0
    (i + 1...n).each do |j|
      if nums[j] > nums[i]
        right = 1
        break
      elsif nums[j] < nums[i]
        right -= 1
        break
      end
    end
    if left == right && left != 0
      res += 1
    end
  end
  res
end
