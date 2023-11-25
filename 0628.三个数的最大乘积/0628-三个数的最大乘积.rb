# @param {Integer[]} nums
# @return {Integer}
def maximum_product(nums)
  if nums.length == 3
    return nums[0] * nums[1] * nums[2]
  else
    num = nums.select { |item| item >= 0 }
    num2 = nums.reject { |item| item >= 0 }
    num.sort!
    num2.sort!
    if num2.length == 1 or num2.empty?
      return num[-3] * num[-2] * num[-1]
    elsif num.length == 1 or num.length == 2
      return num2[0] * num2[1] * num[-1]
    elsif num.empty?
      return num2[-3] * num2[-2] * num2[-1]
    else
      return [num2[0] * num2[1] * num[-1], num[-3] * num[-2] * num[-1]].max
    end
  end
end
