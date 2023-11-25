# @param {Integer[]} nums
# @return {Boolean}
def can_be_increasing(nums)
  temp = []
  for i in 0...nums.length - 1
    if nums[i] >= nums[i + 1]
      temp.push(i)
    end
  end
  if temp.length >= 2
    return false
  elsif temp.length == 1
    t = nums.dup
    t.delete_at(temp[0])
    nums.delete_at(temp[0] + 1)
    if t.sort.uniq == t
      return true
    elsif nums.sort.uniq == nums
      return true
    else
      return false
    end
  else
    return true
  end
end
