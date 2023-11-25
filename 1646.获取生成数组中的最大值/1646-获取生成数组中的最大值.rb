# @param {Integer} n
# @return {Integer}
def get_maximum_generated(n)
  nums = Array.new(n + 1, 0)
  nums[0] = 0
  nums[1] = 1
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    for i in 1...nums.length
      if 2 * i >= 2
        if 2 * i + 1 > n
          break
        end
        nums[2 * i] = nums[i]
        nums[2 * i + 1] = nums[i] + nums[i + 1]
      end
    end
    return nums.max
  end
end
