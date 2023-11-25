# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity_ii(nums)
  n = nums.select { |item| item % 2 == 0 }
  m = nums.select { |item| item % 2 == 1 }
  n0, m0 = 0, 0
  for i in 0...nums.length
    if i % 2 == 0
      nums[i] = n[n0]
      n0 += 1
    else
      nums[i] = m[m0]
      m0 += 1
    end
  end
  nums
end
