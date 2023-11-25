# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def wiggle_sort(nums)
  ans = nums.sort
  n = ans.length
  if n % 2 == 0
    for i in 0...nums.length
      if i % 2 == 0
        nums[i] = ans[ans.length / 2 - i / 2 - 1]
      else
        nums[i] = ans[ans.length - i / 2 - 1]
      end
    end
  else
    for i in 0...nums.length
      if i % 2 == 0
        nums[i] = ans[ans.length / 2 - i / 2]
      else
        nums[i] = ans[ans.length - i / 2 - 1]
      end
    end
  end
end
