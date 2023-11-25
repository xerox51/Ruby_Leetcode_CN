# @param {Integer[]} nums
# @return {Integer}
def min_max_game(nums)
  n = nums.length
  if n == 1
    return nums[0]
  end
  if n == 2
    return [nums[0], nums[1]].min
  end
  newnums, len = transfer(nums, n)
  while newnums.length >= 1
    newnums, len = transfer(newnums, len)
    if newnums.length == 1
      return newnums[0]
    end
  end
end

def transfer(nums, n)
  newnums = Array.new(nums.length / 2, 0)
  for i in 0...n
    if i < n / 2 and i % 2 == 0
      newnums[i] = [nums[2 * i], nums[2 * i + 1]].min
    end
    if i < n / 2 and i % 2 == 1
      newnums[i] = [nums[2 * i], nums[2 * i + 1]].max
    end
  end
  return [newnums, newnums.length]
end
