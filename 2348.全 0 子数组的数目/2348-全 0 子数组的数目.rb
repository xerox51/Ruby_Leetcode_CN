# @param {Integer[]} nums
# @return {Integer}
def zero_filled_subarray(nums)
  ans = ""
  for i in 0...nums.length
    if nums[i] == 0
      ans << "0"
    elsif nums[i] != 0
      ans << ","
    end
  end
  temp = ans.split(",").select { |item| item != "" }
  num = 0
  for item in temp
    num += (item.length + 1) * item.length / 2
  end
  return num
end
