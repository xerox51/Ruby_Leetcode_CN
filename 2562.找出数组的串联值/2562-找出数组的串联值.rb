# @param {Integer[]} nums
# @return {Integer}
def find_the_array_conc_val(nums)
  s = ""
  nums.map! { |item| item.to_s }
  left = 0
  right = nums.length - 1
  num = 0
  while left <= right
    if left == right
      num += nums[left].to_i
      break
    end
    s << nums[left]
    s << nums[right]
    num = num + s.to_i
    s = ""
    left += 1
    right -= 1
  end
  num
end
