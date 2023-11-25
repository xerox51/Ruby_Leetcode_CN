# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def k_length_apart(nums, k)
  ans = []
  it = nums.index(1)
  if it == nil
    return true
  else
    cnt = 0
    for i in it + 1...nums.length
      if nums[i] == 0
        cnt += 1
      elsif nums[i] == 1
        if cnt < k
          return false
        else
          cnt = 0
        end
      end
    end
    return true
  end
end
